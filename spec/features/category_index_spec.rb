require 'rails_helper'

RSpec.describe 'Category Index', type: :feature do
    describe 'Category Index' do
        before do 
            login_user
            visit categories_path
        end

        it 'displays the page title' do
            expect(page).to have_content('CATEGORIES')
        end

        it 'displays correct category name' do
            expect(page).to have_content('Category')
        end

        it 'displays correct category icon' do
            expect(page).to have_content('Icon')
        end

        it 'displays a link to add a new category' do
            expect(page).to have_link('Add Category')
        end
    end
end