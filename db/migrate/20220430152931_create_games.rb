class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :img
      t.text :content

      t.timestamps
    end
  end
end
