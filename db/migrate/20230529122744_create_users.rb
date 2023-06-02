class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    # Drop dependent objects first
    remove_foreign_key :categories, column: :author_id
    remove_foreign_key :purchases, column: :author_id
    remove_foreign_key :category_purchases, :categories
    remove_foreign_key :category_purchases, :purchases

    # Drop the users table
    drop_table :users

    # Recreate the users table with updated columns and constraints
    create_table :users do |t|
      t.string :name

      t.timestamps
    end

    # Add back the foreign key constraints if needed
    add_foreign_key :categories, :users, column: :author_id
    add_foreign_key :purchases, :users, column: :author_id
    add_foreign_key :category_purchases, :categories
    add_foreign_key :category_purchases, :purchases
  end
end
