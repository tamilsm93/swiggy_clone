class AddPriceToItem < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :price, :float
  end
end
