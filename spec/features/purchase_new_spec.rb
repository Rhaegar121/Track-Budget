require 'rails_helper'

RSpec.describe 'Purchase New', type: :feature do
    describe 'Purchase New' do
        before do 
            login_user
            visit new_category_purchase_path(@category.id)
        end

        it 'displays the page title' do
            expect(page).to have_content('ADD PURCHASE')
        end

        it 'displays a form to create a new purchase' do
            expect(page).to have_field('purchase_name')
            expect(page).to have_field('purchase_amount')
            expect(page).to have_button('Create Purchase')
        end

        it 'creates a new purchase' do
            fill_in 'purchase_name', with: 'New Purchase'
            fill_in 'purchase_amount', with: 10
            click_button 'Create Purchase'
            expect(page).to have_content('New Purchase')
            expect(page).to have_content('10')
        end

        it 'displays error messages if purchase is not created' do
            fill_in 'purchase_name', with: ''
            fill_in 'purchase_amount', with: ''
            click_button 'Create Purchase'
            expect(page).to have_content("Purchase was not created.")
        end
    end
end