require 'rails_helper'

RSpec.describe CategoryPurchase, type: :model do
    describe 'CategoryPurchase Model' do
        before do 
            @user = User.new(name: 'Username', email: 'user@gmail.com', password: 'password')
            @category = Category.new(name: 'Category', icon: 'Icon', author_id: @user.id)
            @purchase = Purchase.new(name: 'Purchase', amount: 10, author_id: @user.id)
            @category_purchase = CategoryPurchase.new(category_id: @category.id, purchase_id: @purchase.id)
        end

        it 'is not valid without a category' do
            @category_purchase.category_id = nil
            expect(@category_purchase).to_not be_valid
        end

        it 'is not valid without a purchase' do
            @category_purchase.purchase_id = nil
            expect(@category_purchase).to_not be_valid
        end

        it 'is not valid with a category that does not exist' do
            @category_purchase.category_id = 0
            expect(@category_purchase).to_not be_valid
        end

        it 'is not valid with a purchase that does not exist' do
            @category_purchase.purchase_id = 0
            expect(@category_purchase).to_not be_valid
        end
    end
end