require 'rails_helper'

describe 'Recipe Index Page', type: :feature do
  before(:each) do
    visit user_session_path
    @user_one = User.new(
        first_name: "Joshua", last_name: "Ivie", email: "joshua@joshuaivie.com", password: 'password', password_confirmation: "password"
    )
    fill_in 'Email', with: 'joshua@joshuaivie.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    @recipe = @user_one.recipes.create!(
      name: 'Pizza', preparation_time: 25,
      cooking_time: 120,
      description: 'Pizza combines pizza sauce, cheese, and pineapple.',
      public: true
    )

    visit recipes_path
  end

  describe 'I can see' do
    it 'a recipe\'s title.' do
      expect(page).to have_content 'Pizza'
    end

    it 'a recipe\'s description' do
      expect(page).to have_content 'Pizza combines pizza sauce, cheese, and pineapple.'
    end

    it 'a recipe\'s cooking time' do
        expect(page).to have_content 'cooking_time'
    end

    it 'a recipe\'s preparation time' do
        expect(page).to have_content 'preparation_time'
    end
  end
end