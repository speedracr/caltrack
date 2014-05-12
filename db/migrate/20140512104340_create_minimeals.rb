class CreateMinimeals < ActiveRecord::Migration
  def change
    create_table :minimeals do |t|
      t.integer :fooditem
      t.decimal :grams
      t.integer :user
      t.date :date

      t.timestamps
    end
  end
end
