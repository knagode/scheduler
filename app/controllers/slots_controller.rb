class SlotsController < ApplicationController
  def index
    @slots = current_teacher.slots
  end

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.create(slot_params.merge!({teacher: current_teacher}))
    redirect_to slots_path if @slot.valid?
  end

  private

  def set_slot
    @slot = Slot.find(params[:id])
  end

  def slot_params
    params.require(:slot).permit(:start_at, :stop_at)
  end
end
