FactoryGirl.define do
  factory :lesson do
    start_at 6.hours.ago.at_beginning_of_hour()
    slot
    student
  end
end

