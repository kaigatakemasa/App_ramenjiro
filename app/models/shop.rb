class Shop < ApplicationRecord
	has_many :foods
	has_many :shop_images
	attachment :shop_image

	validates :shop_name, presence: true
	validates :shop_address, presence: true
	validates :daytime_department, presence: true

end
