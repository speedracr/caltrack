class MinimealsUser < ActiveRecord::Migration
  def change
  	add_column 		:minimeals, :user_id, :integer
  	remove_column 	:minimeals, :user, :integer
  end
end
