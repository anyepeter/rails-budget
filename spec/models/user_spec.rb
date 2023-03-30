require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user_one = User.new(name: 'anye', email: 'prteter@gmail.com', password: 12_345_678,
                         password_confirmation: 12_345_678)
  end
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(@user_one).to be_valid
    end
    it 'is not valid without a name' do
      @user_one.name = ''
      expect(@user_one).to_not be_valid
    end
    it 'Is should valid the post counter' do
      @user_one.email = ''
      expect(@user_one).to_not be_valid
    end
  end
end
