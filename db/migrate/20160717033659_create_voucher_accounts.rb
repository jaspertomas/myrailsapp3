class CreateVoucherAccounts < ActiveRecord::Migration
  def change
    create_table :voucher_accounts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
