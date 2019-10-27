class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|

        t.integer :shop_id
    	t.string :food_name
    	t.integer :food_price

      t.timestamps
    end
  end
end
