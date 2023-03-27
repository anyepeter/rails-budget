require 'rails_helper'

RSpec.describe 'category_expenditures/new', type: :view do
  before(:each) do
    assign(:category_expenditure, CategoryExpenditure.new)
  end

  it 'renders new category_expenditure form' do
    render

    assert_select 'form[action=?][method=?]', category_expenditures_path, 'post' do
    end
  end
end
