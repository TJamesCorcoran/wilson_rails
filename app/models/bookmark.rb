class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :part
end
