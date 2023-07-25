class DropMenulists < ActiveRecord::Migration[6.1]
  def change
    drop_table :menulists
  end
end
