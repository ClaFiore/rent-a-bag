class CreateHandbags < ActiveRecord::Migration[6.0]
  def change
    create_table :handbags do |t|
      t.string :designer
      t.string :bag_type
      t.string :color
      t.string :fabric
      t.integer :price
      t.string :image
      t.integer :lister_id
      t.timestamps
    end
  end
end
