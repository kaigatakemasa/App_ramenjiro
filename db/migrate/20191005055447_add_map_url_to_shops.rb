class AddMapUrlToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :map_url, :text
  end
end
