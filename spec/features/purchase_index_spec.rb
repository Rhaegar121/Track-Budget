require 'rails_helper'

RSpec.describe 'Purchase Index', type: :feature do
  describe 'Purchase Index' do
    before do
      login_user
      visit category_purchases_path(@category.id)
    end

    it 'displays the page title' do
      expect(page).to have_content('PURCHASES')
    end

    it 'displays correct purchase name' do
      expect(page).to have_content('Purchase')
    end

    it 'displays correct purchase amount' do
      expect(page).to have_content('10')
    end

    it 'displays a link to add a new purchase' do
      expect(page).to have_link('Add Purchase')
    end
  end
end
