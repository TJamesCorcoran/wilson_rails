class User < ApplicationRecord
  belongs_to :address
  has_one_attached :avatar
end
