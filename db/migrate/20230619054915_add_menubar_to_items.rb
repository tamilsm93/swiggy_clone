class AddMenubarToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :menubar_id, :integer
  end
end
