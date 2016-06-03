class AddColumnToUser < ActiveRecord::Migration
  def change
  	 add_column :users, :address, :string
  	     add_column :users, :balance, :float
  end
end
