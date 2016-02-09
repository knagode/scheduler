class Slot < ActiveRecord::Base
  belongs_to :teacher

  validate :stop_date_before_start_date
  before_save :round_off

  def stop_date_before_start_date
    if !stop_at.nil? && stop_at <= start_at
      self.errors.add(:stop_at, 'Stop time should be greater than Start time')
    end
  end

  def bookable_slots
    array = []
    next_start_at = start_at
    while next_start_at < stop_at
      bookable_slot =  BookableSlot.new
      bookable_slot.slot = self
      bookable_slot.start_at = next_start_at
      bookable_slot.stop_at = next_start_at.advance(minutes: 30)
      array << bookable_slot
      next_start_at = bookable_slot.stop_at
    end
    array
  end

  def round_off
    self.start_at = start_at.round_off(30.minutes)
    self.stop_at = stop_at.round_off(30.minutes)
  end
end
