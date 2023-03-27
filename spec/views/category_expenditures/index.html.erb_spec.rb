require 'rails_helper'

RSpec.describe 'category_expenditures/index', type: :view do
  before(:each) do
    assign(:category_expenditures, [
             CategoryExpenditure.create!,
             CategoryExpenditure.create!
           ])
  end

  it 'renders a list of category_expenditures' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
