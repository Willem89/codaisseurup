FactoryGirl.define do
  factory :event do
    name              "House"
    description       { Faker::Lorem.sentence(40) }
    location          "Amsterdam"
    price             { Faker::Commerce.price }
    capacity          2
    starts_at         "0020-10-10 01:00:01"
    ends_at           "0020-10-10 01:00:02"
    includes_drinks   true
    includes_food     true
    active            true
    user              { build(:user) }

    # trait :active do
    #   active true
    # end
    #
    # trait :inactive do
    #   active false
    # end
  end
end
