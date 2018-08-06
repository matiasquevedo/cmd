class Portion < ApplicationRecord
  belongs_to :food
  belongs_to :sale
end
