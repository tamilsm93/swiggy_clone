class CreateMenuLists < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_lists do |t|
      t.string :menu_name
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
