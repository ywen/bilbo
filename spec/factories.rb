FactoryGirl.define do
  factory :user do |u|
    sequence(:login) {|n| "login#{n}"}
    sequence(:name) {|n| "Name#{n}"}
    sequence(:email) {|n| "email#{n}@example.com"}
    u.password {"password"}
  end
end
