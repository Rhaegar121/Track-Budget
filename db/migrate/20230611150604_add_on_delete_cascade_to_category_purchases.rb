class AddOnDeleteCascadeToCategoryPurchases < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :category_purchases, :categories
    remove_foreign_key :category_purchases, :purchases
    add_foreign_key :category_purchases, :categories, on_delete: :cascade
    add_foreign_key :category_purchases, :purchases, on_delete: :cascade
  end
end
