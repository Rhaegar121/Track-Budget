class Category < ApplicationRecord
    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    has_many :categories_purchases
    has_many :purchases, through: :categories_purchases

    validates :name, :icon, presence: true
end
