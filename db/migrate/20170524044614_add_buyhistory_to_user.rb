class AddBuyhistoryToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :buyhistory, :string
  end
end
