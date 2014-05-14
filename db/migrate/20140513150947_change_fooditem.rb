class ChangeFooditem < ActiveRecord::Migration
  def change
  	rename_column :minimeals, :fooditem, :food_id
  end
end
