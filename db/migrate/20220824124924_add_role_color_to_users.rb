class AddRoleColorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :color, :string, default: "black"
  end
end
