class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :height
      t.integer :weight
      t.integer :goal_weight
      t.integer :age
      t.boolean :public
      t.integer :water

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
