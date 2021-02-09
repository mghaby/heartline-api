class AddMfToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mf, :integer
  end
end
