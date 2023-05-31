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
            expect(page).to have_content('Icon')
        end

        it 'displays a link to go back to the categories index' do
            expect(page).to have_link('back')
        end

        it 'displays a button to add a new category' do
            expect(page).to have_button('Add Category')
        end

        it 'creates a new category with valid inputs' do
            fill_in 'Name', with: 'Category'
            select '🍔', from: 'Icon'
            click_button 'Add Category'
            expect(page).to have_content('Category')
        end

        it 'does not create a new category with invalid inputs' do
            fill_in 'Name', with: nil
            select '🍔', from: 'Icon'
            click_button 'Add Category'
            expect(page).to have_content("Category was not created.")
        end
    end
end