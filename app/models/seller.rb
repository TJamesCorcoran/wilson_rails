class Seller < ApplicationRecord
  belongs_to :address
  belongs_to :seller_vehicle
  has_one_attached :pix
end
