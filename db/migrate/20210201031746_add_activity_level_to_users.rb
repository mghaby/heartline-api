class AddActivityLevelToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :activity_level, :float
  end
end
