FactoryGirl.define do
  factory :registration do
    user nil
    event nil
    user_id 1
    event_id 1
    price "9.99"
    guests_count 1
  end
end
