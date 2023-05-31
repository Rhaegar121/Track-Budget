class Category < ApplicationRecord
    belongs_to :author, class_name: 'User', foreign_key: 'author_id'
    has_many :category_purchases
    has_many :purchases, through: :category_purchases

    validates :name, :icon, presence: true
end
