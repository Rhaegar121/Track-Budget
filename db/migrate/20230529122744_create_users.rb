class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    # Drop the users table
    drop_table :users if table_exists?(:users)

    # Recreate the users table with updated columns and constraints
    create_table :users do |t|
      t.string :name

      t.timestamps
    end
  end
end
