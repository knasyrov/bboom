class CreateCoins < ActiveRecord::Migration[7.2]
  def change
    create_table :coins do |t|
      t.string :symbol
      t.string :name
      t.string :eid
      t.timestamps
    end
  end
end
