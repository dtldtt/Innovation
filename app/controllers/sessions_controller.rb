class SessionsController < ApplicationController
  def new
  end

  def create
    
    student=Student.find_by(account: params[:session][:account])
    if student && student.authenticate(params[:session][:password])
      log_in student
      redirect_to student
    else
      #error
      flash.now[:danger]='Invalid account/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
