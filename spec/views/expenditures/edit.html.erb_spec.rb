require 'rails_helper'

RSpec.describe 'expenditures/edit', type: :view do
  let(:expenditure) do
    Expenditure.create!(
      name: 'MyString',
      amount: 1.5
    )
  end

  before(:each) do
    assign(:expenditure, expenditure)
  end

  it 'renders the edit expenditure form' do
    render

    assert_select 'form[action=?][method=?]', expenditure_path(expenditure), 'post' do
      assert_select 'input[name=?]', 'expenditure[name]'

      assert_select 'input[name=?]', 'expenditure[amount]'
    end
  end
end
