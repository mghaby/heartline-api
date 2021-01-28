class RemovePublicFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :public, :boolean
    remove_column :users, :water, :integer
  end
end
