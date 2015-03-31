# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course_link, :class => 'CourseLinks' do
    course_id "MyString"
    text "MyString"
    link "MyString"
  end
end
