require 'rails_helper'

RSpec.describe "Signups", type: :request do
  describe "Signup" do
    it "doesn't work with invalid signup info" do
      get new_user_registration_path
      expect { post user_registration_path, params: {
          user: { name: "",
                  email: "user@invalid",
                  password: "foo",
                  password_confirmation: "bar"
            }
          }
        }.not_to change(User, :count)
    end
    it "works with valid signup info" do
      get new_user_registration_path
      pending
      expect { post user_registration_path, params: {
          user: { name: "exampleuser",
                  email: "user1@example.com",
                  password: "password",
                  password_confirmation: "password"
            }
          }
        }.to change(User, :count).by 1
    end
  end
end
