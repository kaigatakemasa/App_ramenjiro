class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|

    	t.string :opinion_title
    	t.string :opinion_text

      t.timestamps
    end
  end
end
