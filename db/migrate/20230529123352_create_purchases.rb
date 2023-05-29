class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.string :name, null: false, unique: true, index: true
      t.integer :amount, null: false, default: 0

      t.timestamps
    end
  end
end
