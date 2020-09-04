class CreateHandbags < ActiveRecord::Migration[6.0]
  def change
    create_table :handbags do |t|
      t.string :designer
      t.string :type
      t.string :color
      t.string :fabric
      t.integer :price
      t.string :image
      t.timestamps
    end
  end
end
