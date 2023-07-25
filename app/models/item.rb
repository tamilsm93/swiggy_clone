class Item < ApplicationRecord
  belongs_to :hotel
  belongs_to :menubar
  #belongs_to :cart_item	
end
