# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    identifier "MyString"
    from "MyString"
    time "2014-01-04 23:52:00"
    text "MyString"
  end
end
