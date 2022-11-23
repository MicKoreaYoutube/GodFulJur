class CreateGuidelines < ActiveRecord::Migration[6.0]
  def change
    create_table :guidelines do |t|
      t.string :name

      t.timestamps
    end
  end
end
