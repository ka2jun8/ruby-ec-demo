class AddActiveToItem < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :active, :bool
  end
end
