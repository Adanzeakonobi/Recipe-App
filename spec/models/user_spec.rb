require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    before(:example) do
      @user = User.new(first_name: 'Robert', last_name: 'Green', email: 'robert@green.com',
                       photo: 'https://avatars.dicebear.com/api/micah/rober-green.svg', password: 'password', password_confirmation: 'password', confirmed_at: DateTime.now)
    end

    it 'User should be valid' do
      expect(@user).to be_valid
    end

    it 'User should not be valid without a first_name' do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end
  end
end
