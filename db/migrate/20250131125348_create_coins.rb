class CreateCoins < ActiveRecord::Migration[7.2]
  def change
    create_table :coins do |t|
      t.string :symbol, null: false
      t.string :name, null: false
      t.string :eid, null: false
      t.timestamps
    end

    add_index :coins, :eid,  unique: true
  end
end
