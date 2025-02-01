class CreateBriefBagItems < ActiveRecord::Migration[7.2]
  def change
    create_table :brief_bag_items do |t|
      t.references :brief_bag
      t.string :name
      t.float :value
      t.string :symbol
      t.timestamps
    end
  end
end
