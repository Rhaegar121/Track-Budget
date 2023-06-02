class CreateUsers < ActiveRecord::Migration[7.0]
  def up
    drop_table :users if table_exists?(:users)

    create_table :users do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
