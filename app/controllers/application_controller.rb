class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_student
    Student.first
  end
  helper_method :current_student

  def current_teacher
    Teacher.first
  end
  helper_method :current_teacher
end
