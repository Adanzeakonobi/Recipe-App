require 'rails_helper'

RSpec.describe 'Foods Index Page Features', type: :feature do
  before(:each) do
    visit user_session_path
    @user_one = User.new(
        first_name: "Joshua", last_name: "Ivie", email: "joshua@joshuaivie.com", password: 'password', password_confirmation: "password"
    )
    fill_in 'Email', with: 'joshua@joshuaivie.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    @salt = @user_one.foods.create!(name: "Salt", measurement_unit: "g", price: 100, quantity: 500)
    visit foods_path
  end

  describe 'Index Page Contents' do
    it 'can see the contents of the page' do
      expect(page).to have_content 'Salt'
    end

    it 'should see the price of a particular food item' do
      expect(page).to have_content '100'
    end

    it 'should see the measurement unit of a particular food item' do
      expect(page).to have_content 'g'
    end

    it 'should see a link to delete a food item on the page' do
      expect(page).to have_link('Delete')
    end

    it 'should see a link to add food item' do
      expect(page).to have_link('Add Food')
    end

    it 'When I click on add food link, it redirects me to a page fr adding a food item' do
      click_link('Add Food')
      expect(page).to have_current_path(new_food_path)
    end
  end
end