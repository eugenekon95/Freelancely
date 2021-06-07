class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :city, :string
    add_column :users, :about, :text
    add_column :users, :language, :string
    add_column :users, :status, :boolean, default: false
  end
end
