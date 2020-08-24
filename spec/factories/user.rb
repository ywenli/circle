FactoryBot.define do
  factory :user do
    username { "testuser1" }
    email { "testuser1@example.com" }
    password { "password" }
    password_confirmation { "password" }
  end
  factory :other_use, class: User do
    username { 'testuser2' }
    email { 'testuser2@rails.com' }
    password { 'foobar' }
    password_confirmation { 'foobar' }
  end
end