class AddOnDeleteCascadeToCategoryPurchases < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :category_purchases, :categories
    add_foreign_key :category_purchases, :categories, on_delete: :cascade
  end
end
