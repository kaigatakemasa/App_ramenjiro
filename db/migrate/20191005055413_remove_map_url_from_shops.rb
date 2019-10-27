class RemoveMapUrlFromShops < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :map_url, :string
  end
end
