class AddUserReferenceToCartItems < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_items, :user_id, :integer
  end
end
