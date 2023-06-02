class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, unique: true, index: true
      t.string :icon, null: false, default: 'fas fa-question-circle'
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
