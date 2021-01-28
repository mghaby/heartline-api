class AddPublicToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :public, :boolean, default: false
    add_column :users, :water, :integer, default: 2
  end
end
