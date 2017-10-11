module SessionsHelper
  def log_in(*identity)
    if identity[0]=='student'
      session[:student_id]=identity[1].id
    elsif identity[0]=='teacher'
      session[:teacher_id]=identity[1].id
    end
  end

  def current_status(identity)
    if identity=='student'
      @current_student ||= Student.find_by(id: session[:student_id])
    elsif identity=='teacher'
      @current_teacher ||= Teacher.find_by(id: session[:teacher_id])
      if @current_teacher
        session[:admin]=@current_teacher.isAdmin
      end
    end
  end

  def logged_in?(identity)
    if identity=='student'
      !current_status('student').nil? 
    elsif identity=='teacher'
      !current_status('teacher').nil?
    end
  end

  def log_out(identity)
    if identity=='student'
      session.delete(:student_id)
      @current_student=nil
    elsif identity=='teacher'
      session.delete(:teacher_id)
      @current_teacher=nil
    end
  end

  def is_admin?
    session[:admin]
  end

end
