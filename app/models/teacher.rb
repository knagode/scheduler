class Teacher < ActiveRecord::Base
  has_many :slots, -> { order 'start_at ASC' }
  #has_many :bookable_slots, -> { order 'start_at ASC' }

  def bookable_slots
    array = []
    slots.each do |slot|
      slot.bookable_slots.each do |bookable_slot|
        array << bookable_slot
      end
    end
    array
  end
end
