class ChangeDataTypeDeliveryTimeToHotel < ActiveRecord::Migration[6.1]
  def up
    change_column :hotels, :delivery_time, :integer
  end

  def down
    change_column :hotels, :delivery_time, :date
  end
end
