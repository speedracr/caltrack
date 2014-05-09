class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :calories_per_unit
      t.decimal :calories_per_g
      t.decimal :macros_carbs
      t.decimal :macros_protein
      t.decimal :macros_fat

      t.timestamps
    end
  end
end
