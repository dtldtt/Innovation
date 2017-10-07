class StudentsController < ApplicationController
  def new
    @student=Student.new
  end

  def show
    @student=Student.find(params[:id])
  end

  private
    def student_params
      params.require(:student).permit(:account,:password,:password_confirmation)
    end
end
