class CategoryPurchase < ApplicationRecord
    self.table_name = "categories_purchases"
    belongs_to :category
    belongs_to :purchase
end