class RenameCategoriesPurchasesToCategoryPurchases < ActiveRecord::Migration[7.0]
  def change
    rename_table :categories_purchases, :category_purchases
  end
end
