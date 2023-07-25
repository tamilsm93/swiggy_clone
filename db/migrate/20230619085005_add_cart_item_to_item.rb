class AddCartItemToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :cart_item_id, :integer
  end
end
