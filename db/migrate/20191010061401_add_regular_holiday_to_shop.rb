class AddRegularHolidayToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :regular_holiday, :string
  end
end
