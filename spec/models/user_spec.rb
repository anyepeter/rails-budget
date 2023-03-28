require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @User_one = User.new(name: 'peter anye', email: 'peter@gmail.com', password:12345678, password_confirmation: 12345678)
    
  end
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(@User_one).to be_valid
    end
    it 'is not valid without a name' do
      @User_one.name = ''
      expect(@User_one).to_not be_valid
    end
    it 'Is should valid the post counter' do
      @User_one.email = ''
      expect(@User_one).to_not be_valid
    end
  end
end
