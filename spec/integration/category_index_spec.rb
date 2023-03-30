require 'rails_helper'

RSpec.describe 'Test for the category and user page', type: :system do
  describe 'check the user information' do
    before(:all) do
      @user_one = User.new(name: 'peter anye', email: 'peter@gmail.com', password: 12_345_678,
                           password_confirmation: 12_345_678)

      visit new_user_registration_path
      fill_in 'Name', with: @user_one.name
      fill_in 'Email', with: @user_one.email
      fill_in 'Password', with: @user_one.password
      fill_in 'confirm_password', with: @user_one.password_confirmation
      click_button 'Next'
    end
    it 'should see category icon' do
      visit new_user_session_path

      fill_in 'user_email', with: @user_one.email
      fill_in 'user_password', with: @user_one.password
      click_button 'Log in'
    end

    context 'should creat a page' do
      before do
        @category = Category.new(author: @user_one, name: 'contruction',
                                 icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST-yS-rMfYaDmYTKgsYHqvHHRO0-uHffrxEk0bmnCCxF-fjhLtOVXqUfji05fOf996WR8&usqp=CAU')
        visit new_user_session_path
        fill_in 'user_email', with: @user_one.email
        fill_in 'user_password', with: @user_one.password
        click_button 'Log in'

        click_link 'New category'
        fill_in 'category_name', with: @category.name
        fill_in 'category_icon', with: @category.icon
        click_button 'Save'
        sleep(1)
      end
      it 'should image' do
        expect(page).to have_selector('img')
      end
      it 'should image' do
        expect(page).to have_content(@category.name.to_s)
      end
      it 'should image' do
        expect(page).to have_content('NEW CATEGORY')
      end
    end
  end
end
