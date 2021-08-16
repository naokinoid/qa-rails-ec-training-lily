class ShipmentStatus < ApplicationRecord
  has_many :order_detail
end
