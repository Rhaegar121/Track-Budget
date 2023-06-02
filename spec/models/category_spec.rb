require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Category Model' do
    before do
      @user = User.new(name: 'Username', email: 'user@gmail.com', password: 'password')
      @category = Category.new(name: 'Category', icon: 'Icon', author_id: @user.id)
    end

    it 'is not valid without a name' do
      @category.name = nil
      expect(@category).to_not be_valid
    end

    it 'is not valid without an icon' do
      @category.icon = nil
      expect(@category).to_not be_valid
    end

    it 'is not valid without an user' do
      @category.author_id = nil
      expect(@category).to_not be_valid
    end
  end
end
