# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "MyString"
    phone "MyString"
    token "MyString"
    subscriber false
  end
end
