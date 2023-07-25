class AddNameAndPriceToCartItem < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_items, :name, :string
    add_column :cart_items, :price, :float
  end
end
