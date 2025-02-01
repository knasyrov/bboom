class CreateBriefBags < ActiveRecord::Migration[7.2]
  def change
    create_table :brief_bags do |t|
      t.references :user
      t.timestamps
    end
  end
end
