class AddRatingAndTimingToHotel < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :price, :float
    add_column :hotels, :delivery_time, :time
    add_column :hotels, :rating, :float
  end
end
