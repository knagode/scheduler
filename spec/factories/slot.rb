FactoryGirl.define do
  factory :slot do
    start_at 6.hours.ago.at_beginning_of_hour()
    stop_at  1.hours.from_now.at_beginning_of_hour()
    teacher
  end
end

