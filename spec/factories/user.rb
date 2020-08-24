FactoryBot.define do
  factory :user do
    username { "testuser1" }
    email { "testuser1@example.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end