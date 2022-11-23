class AddCheckingToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :minecraft_check, :boolean, default: false
  end
end
