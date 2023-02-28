class Bunker < ApplicationRecord
  belongs_to :User
  has_one_attached :photo
  #validates
end
