require 'rails_helper'

RSpec.describe Purchase, type: :model do
    describe 'Purchase Model' do
        before do 
            @user = User.new(name: 'Username', email: 'user@gmail.com', password: 'password')
            @purchase = Purchase.new(name: 'Purchase', amount: 10, author_id: @user.id)
        end

        it 'is not valid without a name' do
            @purchase.name = nil
            expect(@purchase).to_not be_valid
        end

        it 'is not valid without an amount' do
            @purchase.amount = nil
            expect(@purchase).to_not be_valid
        end

        it 'is not valid with an amount less than 0' do
            @purchase.amount = -1
            expect(@purchase).to_not be_valid
        end

        it 'is not valid without an user' do
            @purchase.author_id = nil
            expect(@purchase).to_not be_valid
        end
    end
end