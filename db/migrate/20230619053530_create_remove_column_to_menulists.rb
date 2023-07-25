class CreateRemoveColumnToMenulists < ActiveRecord::Migration[6.1]
  def change
    create_table :remove_column_to_menulists do |t|
      t.integer :item_id

      t.timestamps
    end
  end
end
