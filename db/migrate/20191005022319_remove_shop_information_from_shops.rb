class RemoveShopInformationFromShops < ActiveRecord::Migration[5.2]
  def change
    remove_column :shops, :shop_information, :string
  end
end
