class LessonsController < ApplicationController
  before_action :authenticate_user!
  # before_action :require_authorized_for_current_course, only: [:show]

  def show
  end
  private

  # def require_authorized_for_current_course
  #   if current_lesson.section.course != current_user.enrolled_in?
  # render plain: "Unauthorized", status: :unauthorized
  #   end
  # end

  #   flash[:notice] = "You need to be enrolled in the course to see the lessons."
  #   # redirect_to <%= link_to 'See All Courses', courses_path, class: 'nav-link' %>
  #   # end
  # end

  
  

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
