class PoLineItem < ApplicationRecord
  belongs_to :po
  belongs_to :part
end
