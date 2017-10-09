class TeachersController < ApplicationController
  def new
    @teacher=Teacher.new
  end
  def show
    @teacher=Teacher.find(params[:id])
  end
  
  private
    def teacher_params
      params.require(:student).permit(:account,:password,:password_confirmation)
    end
end
