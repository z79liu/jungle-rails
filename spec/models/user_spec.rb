require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    @subject =  User.new(first_name: "steph", last_name: 'cool', email: 'test@test.com', password: '123tb', password_confirmation: '123tb')
    @subject.save

    it 'is not valid if passsword and password confirm do not much' do
      @user = User.new(first_name: "steph", last_name: 'cool', email: 'steph@warriors.com', password: '12322tb', password_confirmation: '123tb')
      expect(@user).to_not be_valid
    end

    it 'is not valid if new user registering does not have password confirm' do
      @user = User.new(first_name: "steph", last_name: 'cool', email: 'steph@warriors.com', password: '123tb', password_confirmation: nil)
      expect(@user).to_not be_valid
    end

    it 'is not valid if new email registering already exist(case insensitive)' do
      @user = User.new(first_name: "steph", last_name: 'cool', email: 'TEST@TEST.com', password: '123tb', password_confirmation: '123tb')
      expect(@user).to_not be_valid
    end

    it 'is not valid if password length is less than 6)' do
      @user = User.new(first_name: "steph", last_name: 'cool', email: 'TEST@TEST.com', password: '123tb', password_confirmation: '123tb')
      expect(@user).to_not be_valid
    end

  end
end
