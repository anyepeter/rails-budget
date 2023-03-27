require 'rails_helper'

RSpec.describe 'category_expenditures/edit', type: :view do
  let(:category_expenditure) do
    CategoryExpenditure.create!
  end

  before(:each) do
    assign(:category_expenditure, category_expenditure)
  end

  it 'renders the edit category_expenditure form' do
    render

    assert_select 'form[action=?][method=?]', category_expenditure_path(category_expenditure), 'post' do
    end
  end
end
