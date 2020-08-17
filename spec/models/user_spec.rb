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

  describe 'email' do
    it 'should be presence' do
      user.email = " "
      expect(user).to be_invalid
    end
    context  '255 characters' do
      it 'is valid' do
        user.email = "a" * 243 + "@example.com"
      end
    end
    context  '256 characters' do
      it 'is invalid' do
        user.email = "a" * 244 + "@example.com"
      end
    end
    it 'should be valid address' do
      user.email = "user@example.com"
      expect(user).to be_valid

      user.email = "USER@foo.COM"
      expect(user).to be_valid

      user.email = "A_US-ER@foo.bar.org"
      expect(user).to be_valid

      user.email = "first.last@foo.jp"
      expect(user).to be_valid

      user.email = "alice+bob@baz.cn"
      expect(user).to be_valid
    end
    it 'should not be invalid address' do
      user.email = "user@example,com"
      expect(user).to be_invalid

      user.email = "user_at_foo.org"
      expect(user).to be_invalid

      user.email = "user.name@example."
      expect(user).to be_invalid

      user.email = "foo@bar_baz.com"
      expect(user).to be_invalid

      user.email = "foo@bar+baz.com"
      expect(user).to be_invalid

      user.email = "foo@bar..com"
      expect(user).to be_invalid
    end
  end
end
