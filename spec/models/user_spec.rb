require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    # before do
    #   Rails.application.load_seed
    # end
    before(:example) do
      @user = User.new(first_name: 'Joshua', last_name: 'Ivie', email: 'joshua@joshuaivie.com',
                       photo: 'https://avatars.dicebear.com/api/micah/joshua-ivie.svg', password: 'password', password_confirmation: 'password', confirmed_at: DateTime.now)
    end

    it 'User should be valid' do
      expect(@user).to be_valid
    end

    it 'User should not be valid without a first_name' do
      p @user
      @user.first_name = nil
      expect(@user).to_not be_valid
    end
  end
end
