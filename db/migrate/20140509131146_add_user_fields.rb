class AddUserFields < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :goal_per_week, :integer
  	add_column :users, :weight_kg, :decimal
  	add_column :users, :height_cm, :integer
  	add_column :users, :bodyfat_percent, :decimal
  		
  end
end
