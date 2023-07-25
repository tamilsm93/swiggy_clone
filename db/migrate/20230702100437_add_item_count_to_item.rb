class AddItemCountToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :item_count, :integer
  end
end
