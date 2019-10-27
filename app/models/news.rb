class News < ApplicationRecord
	validates :news_title, presence: true
	validates :latest_news, presence: true
	default_scope -> { order(created_at: :desc) }
end
