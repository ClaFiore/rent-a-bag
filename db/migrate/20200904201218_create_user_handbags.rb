class CreateUserHandbags < ActiveRecord::Migration[6.0]
  def change
    create_table :user_handbags do |t|
      t.integer :user_id
      t.integer :handbag_id
      t.timestamps
    end
  end
end
