# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do |o|
    o.content { Faker::Lorem.words(10) }
    o.association :user
    o.name { Faker::Lorem.name }
  end
end
