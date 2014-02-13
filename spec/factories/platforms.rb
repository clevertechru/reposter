# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :platform do
    user_id 1
    title "MyString"
    description "MyString"
    category_id 1
    type_id 1
    token "MyString"
    service_id 1
    state 1
  end
end
