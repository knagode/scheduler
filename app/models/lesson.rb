class Lesson < ActiveRecord::Base
  belongs_to :slot
  belongs_to :student
  validates :slot, :student, :start_at, presence:   true
end
