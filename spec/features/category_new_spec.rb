require 'rails_helper'

RSpec.describe 'Category New', type: :feature do
    describe 'Category New' do
        before do 
            login_user
            visit new_category_path
        end

        it 'displays the page title' do
            expect(page).to have_content('ADD CATEGORY')
        end

        it 'displays a form to add a new category' do
            expect(page).to have_content('Name')
            expect(page).to have_content('Select an icon')
        end

        it 'displays a button to add a new category' do
            expect(page).to have_button('Create Category')
        end

        it 'creates a new category with valid inputs' do
            fill_in 'Name', with: 'Category'
            select '🍔', from: 'Select an icon'
            click_button 'Create Category'
            expect(page).to have_content('Category')
        end

        it 'does not create a new category with invalid inputs' do
            fill_in 'Name', with: nil
            select '🍔', from: 'Select an icon'
            click_button 'Create Category'
            expect(page).to have_content("Category was not created.")
        end
    end
end