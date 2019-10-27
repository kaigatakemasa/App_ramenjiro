class Food < ApplicationRecord
	belongs_to :shop
	has_many :food_images
	accepts_attachments_for :food_images, attachment: :image
end
