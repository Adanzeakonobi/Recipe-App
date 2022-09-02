require 'rails_helper'

describe Food, type: :model do
  before(:each) do
    @user = User.create!(first_name: 'Adaobi', last_name: 'Okoye', email: 'ada@ada.com', password: 'password')
    @soya_beans = @user.foods.create(name: 'Soya Beans', price: 3.5, measurement_unit: 'kg', quantity: 10)
  end

  it 'Food should be valid' do
    expect(@soya_beans).to be_valid
  end

  it 'Food should not be valid without a name' do
    @soya_beans.name = nil
    expect(@soya_beans).to_not be_valid
    @soya_beans.name = ''
    expect(@soya_beans).to_not be_valid
  end

  it 'Food should not be valid if name is too long' do
    @soya_beans.name = 'g' * 251
    expect(@soya_beans).to_not be_valid
  end

  it 'Food should not be valid without a measurement unit' do
    @soya_beans.measurement_unit = nil
    expect(@soya_beans).to_not be_valid
    @user.name = ''
    expect(@user).to_not be_valid
  end

  it 'Food should not be valid if wrong measurement unit is passed' do
    @soya_beans.measurement_unit = 15
    expect(@soya_beans).to_not be_valid
    @soya_beans.name = true
    expect(@soya_beans).to_not be_valid
    @soya_beans.name = 'gl'
    expect(@soya_beans).to_not be_valid
  end

  it 'Food should not be valid if price is negative' do
    @soya_beans.price = - 15
    expect(@soya_beans).to_not be_valid
  end

  it 'Food should not be valid if price is not a number' do
    @soya_beans.price = 'fifteen'
    expect(@soya_beans).to_not be_valid
    @soya_beans.price = true
    expect(@soya_beans).to_not be_valid
  end
end
