module SessionsHelper
  def log_in(*identity)
    if identity[0]=='student'
      session[:student_id]=identity[1].id
    elsif identity[1]=='teacher'
      #teacher
    end
  end

  def current_student
    @current_student ||= Student.find_by(id: session[:student_id])
  end

  def logged_in?(identity)
    if identity=='student'
      !current_student.nil? 
    elsif identity=='teacher'
      #teacher
    end
  end

  def log_out(identity)
    if identity=='student'
      session.delete(:student_id)
      @current_student=nil
    elsif identity=='teacher'
      #teacher
    end
  end

end
