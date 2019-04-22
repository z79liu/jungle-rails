require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is not valid if passsword and password confirm do not much' do
      @user = User.new(first_name: "steph", last_name: 'cool', email: 'steph@warriors.com', password: '123tb', password_confirmation: '123tb')
      expect(@user).to be_valid
    end

    it 'is not valid if new user registering does not have password confirm' do
      @user = User.new(first_name: "steph", last_name: 'cool', email: 'steph@warriors.com', password: '123tb', password_confirmation: nil)
      expect(@user).to be_valid
    end
  end
end
