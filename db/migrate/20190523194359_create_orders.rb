class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :Satay_Wraps
      t.integer :Pad_Thai_Chicken
      t.integer :Pad_Thai_Beef
      t.integer :Pad_Thai_Shrimp
      t.integer :Garlic_Noodles_Chicken
      t.integer :Garlic_Noodles_Beef
      t.integer :Garlic_Noodles_Chicken
      t.integer :Garlic_Noodles_Shrimp
      t.text :Notes

      t.timestamps
    end
  end
end
