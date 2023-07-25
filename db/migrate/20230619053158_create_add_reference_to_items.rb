class CreateAddReferenceToItems < ActiveRecord::Migration[6.1]
  def change
    create_table :add_reference_to_items do |t|
      t.references :menulist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
