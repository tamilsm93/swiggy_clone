class CreateMenubars < ActiveRecord::Migration[6.1]
  def change
    create_table :menubars do |t|
      t.string :name

      t.timestamps
    end
  end
end
