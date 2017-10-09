class SessionsController < ApplicationController
  def new
    if params[:identity]=='student'
      render 'new_student'
    elsif params[:identity]=='teacher'
      render 'new_teacher'
    else
      render 'new'
    end
  end

  def create
    if params[:identity]=='student'
      student=Student.find_by(account: params[:session][:account])
      if student && student.authenticate(params[:session][:password])
        log_in 'student',student
        redirect_to student
      else
        #error
        flash.now[:danger]='Invalid account/password combination'
        render 'new_student'
      end
    elsif params[:identity]=='teacher'
      teacher=Teacher.find_by(account:params[:session][:account])
      if teacher && teacher.authenticate(params[:session][:password])
        log_in 'teacher',teacher
        redirect_to teacher
      else
        flash.now[:danger]='Invalid account/password combination'
        render 'new_teacher'
      end
    end
  end

  def destroy
    log_out params[:identity]
    redirect_to root_url
  end
end
