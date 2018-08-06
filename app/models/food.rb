class Food < ApplicationRecord
  belongs_to :menu
  has_many :ingredients
  has_many :portions
end
