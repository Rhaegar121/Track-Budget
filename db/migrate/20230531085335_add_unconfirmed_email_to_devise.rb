class AddUnconfirmedEmailToDevise < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :unconfirmed_email, :string, unique: true
  end
end
