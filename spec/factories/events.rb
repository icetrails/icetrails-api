# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    user
    description "MyText"
    deadline "2014-01-04 15:58:14"
  end
end
