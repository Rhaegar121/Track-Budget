class RemoveCreatedAtFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :created_at, :datetime
  end
end
