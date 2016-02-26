class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :description
      t.integer :fullness
      t.references :user
      t.references :coffeeshop

      t.timestamps null: false
    end
  end
end
