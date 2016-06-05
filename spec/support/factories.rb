FactoryGirl.define do
  factory :user do
    username
    password "password"
    role 0 
  end

  sequence :username do |n|
    "User #{n}"
  end
end
