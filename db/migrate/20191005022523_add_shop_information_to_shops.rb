class AddShopInformationToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :shop_information, :text
  end
end
