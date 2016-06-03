class CreateWithdrawals < ActiveRecord::Migration
  def change
    create_table :withdrawals do |t|
      t.date :date
      t.float :ammount

      t.timestamps null: false
    end
  end
end
