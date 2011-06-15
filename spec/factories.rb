FactoryGirl.define do
  sequence :user_login do |n|
    "login_#{n}"
  end
  sequence :user_name do |n|
    "name_#{n}"
  end
  sequence :user_email do |n|
    "user#{n}@example.com"
  end
  factory :user do |u|
    u.login{Factory.create :user_login}
    u.name {Factory.create :user_name}
    u.email {Factory.create :user_email}
    u.password {"password"}
  end
end
