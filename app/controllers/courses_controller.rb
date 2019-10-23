class CoursesController < ApplicationController
  def index
    @courses =Course.all
  end

  def show 
    @course =Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:image, :picture)
  end

end
