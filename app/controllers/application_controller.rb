class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_for_user_change

  def check_for_user_change
    if !current_student && !current_teacher
      session[:student_id] = Student.first
    end

    if params.key? :switch_user
      if session.key? :teacher_id
        session.delete(:teacher_id)
        session[:student_id] = Student.all.pluck(:id).sample
        redirect_to teachers_path
      else
        session.delete(:student_id)
        session[:teacher_id] = Teacher.all.pluck(:id).sample
        redirect_to slots_path
      end

    end
  end

  def current_student
    return Student.first if Rails.env.test?
    Student.find(session[:student_id]) if session.key? :student_id

  end
  helper_method :current_student

  def current_teacher
    return Teacher.first if Rails.env.test?
    Teacher.find(session[:teacher_id]) if session.key? :teacher_id
  end
  helper_method :current_teacher

  def current_user
    return current_teacher if current_teacher
    current_student
  end
  helper_method :current_user
end
