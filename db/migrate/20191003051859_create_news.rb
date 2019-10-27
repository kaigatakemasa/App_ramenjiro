class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|

    	t.string :news_title
    	t.text :latest_news

      t.timestamps
    end
  end
end
