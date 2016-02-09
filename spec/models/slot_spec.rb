require 'rails_helper'

RSpec.describe Slot, type: :model do
  subject do
    build :slot, start_at: 1.hours.from_now.at_beginning_of_hour(), stop_at: 2.hours.from_now.at_beginning_of_hour()
  end

  describe '#bookable_slots' do
    it 'should return list of bookable slots with length of 30minutes' do
      expect(subject.bookable_slots.count).to eq(2)
    end
  end

  context 'invalid date range' do
    it 'should not be valid if start_at is greater than stop_at' do
      subject.start_at = 10.years.from_now
      expect(subject).not_to be_valid
    end
  end
end
