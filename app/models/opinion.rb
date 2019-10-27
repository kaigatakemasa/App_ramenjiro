class Opinion < ApplicationRecord
	validates :opinion_title, presence: true
	validates :opinion_text, presence: true
	default_scope -> { order(created_at: :desc) }
end
