class AddDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password, :string
    add_column :users, :mail, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :credit, :string
  end
end
