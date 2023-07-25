class AddNumberOfItemToMenubars < ActiveRecord::Migration[6.1]
  def change
    add_column :menubars, :number_of_item, :integer
  end
end
