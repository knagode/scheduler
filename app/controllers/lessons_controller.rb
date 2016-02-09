class LessonsController < ApplicationController
  def create
    slot = Slot.find(params[:slot_id])

    Lesson.create!(slot: slot, student: current_student, start_at: params[:start_at])
    redirect_to teacher_path(slot.teacher)
  end
end
