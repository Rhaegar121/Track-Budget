class Purchase < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :categories_purchases
  has_many :categories, through: :categories_purchases

  validates :name, presence: true
  validates :amount, presence:true, numericality: { greater_than_or_equal_to: 0 }
end
