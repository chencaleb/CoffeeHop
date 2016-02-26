class CreateCoffeeshops < ActiveRecord::Migration
  def change
    create_table :coffeeshops do |t|
      t.string :name
      t.references :university

      t.timestamps null: false
    end
  end
end
