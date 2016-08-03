class CreateVoucherAccounts < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.string :no
      t.date :date
      t.string :payee
      t.text :description
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
