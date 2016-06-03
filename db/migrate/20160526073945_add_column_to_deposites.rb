class AddColumnToDeposites < ActiveRecord::Migration
  def change
  	add_column :deposites, :user_id, :integer
  end
end
