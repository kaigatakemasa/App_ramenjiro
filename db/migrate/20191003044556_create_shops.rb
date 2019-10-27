class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|

        t.string :shop_name
		t.string :shop_address
		t.string :twitter_url
		t.string :twitter_title
		t.string :map_url
		t.string :daytime_department
		t.string :night_department
		t.string :shop_information

      t.timestamps
    end
  end
end
