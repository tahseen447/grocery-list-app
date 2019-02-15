class ListItem < ApplicationRecord
  belongs_to :list
  belongs_to :item

  validates :quantity, numericality: { only_integer: true }
end
