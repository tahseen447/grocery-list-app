class List < ActiveRecord::Base
  has_many :list_items
  has_many :items, through: :list_items

  belongs_to :user

  accepts_nested_attributes_for :list_items

  def list_items_attributes=(list_item_attributes)
    list_items_attributes.each do |list_item_attribute|

    end
  end

end
