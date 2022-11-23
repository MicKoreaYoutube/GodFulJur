class CreateCategory1s < ActiveRecord::Migration[6.0]
  def change
    create_table :category1s do |t|
	  t.integer :guideline_id
	  t.string :content
	  t.text :content2
      t.timestamps
    end
  end
end
