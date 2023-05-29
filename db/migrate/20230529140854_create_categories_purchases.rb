class CreateCategoriesPurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_purchases do |t|
      t.references :category, null: false, foreign_key: true
      t.references :purchase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
