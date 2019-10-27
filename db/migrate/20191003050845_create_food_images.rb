class CreateFoodImages < ActiveRecord::Migration[5.2]
  def change
    create_table :food_images do |t|

    	t.integer :food_id
    	t.string :image_id
    	t.integer :image_number

      t.timestamps
    end
  end
end
