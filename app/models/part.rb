class Part < ApplicationRecord
  belongs_to :part_brand
  has_one_attached :pix
end
