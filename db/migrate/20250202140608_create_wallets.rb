class CreateWallets < ActiveRecord::Migration[7.2]
  def change
    create_table :wallets do |t|
      t.references :brief_bag
      t.string :name, null: false
      t.float :value, default: 0.0
      t.string :symbol, null: false
      t.string :eid, null: false
      t.timestamps
    end
  end
end
