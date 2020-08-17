require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.new( username: "Example",
                        email: "user@example.com",
                        password: "foobar",
                        password_confirmation: "foobar")}

  describe 'User' do
    it 'should be valid' do
      expect(user).to be_valid
    end
  end

  describe 'username' do
    it 'should be presence' do
      user.username = " "
      expect(user).to be_invalid
    end
    context '50 characters' do
      it 'is valid' do
        user.username = "a" * 50
        expect(user).to be_valid
      end
    end
    context '51 characters' do
      it 'is invalid' do
        user.username = "a" * 51
        expect(user).to be_invalid
      end
    end
  end
end
