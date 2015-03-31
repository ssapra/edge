# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    title "MyString"
    description "MyText"
    details "MyText"
    instructor "MyString"
    application_link "MyString"
    enrollment_open false
  end
end
