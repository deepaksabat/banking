class CreateDeposites < ActiveRecord::Migration
  def change
    create_table :deposites do |t|
      t.date :date
      t.float :ammount

      t.timestamps null: false
    end
  end
end
