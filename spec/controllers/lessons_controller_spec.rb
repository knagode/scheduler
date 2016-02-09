require 'rails_helper'

RSpec.describe LessonsController, type: :controller do
  describe '#create' do
    it 'should create lesson' do
      create :student
      expect{
        post :create, {start_at: slot.start_at, slot_id: slot.id}
      }.to change{ Lesson.all.count }
    end
  end
end
