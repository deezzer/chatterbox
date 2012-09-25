# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do |o|
    o.body { Faker::Lorem.words(10) }
    o.association :user
    o.poster { Faker::Lorem.name }
  end
end
