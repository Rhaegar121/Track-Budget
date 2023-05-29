class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.integer :author_id
      t.string :name
      t.decimal :amount
      t.datetime :created_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
