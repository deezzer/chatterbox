# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do |o|
     o.name { Faker::Name.name.gsub(/\./, '-') }
  end

end
