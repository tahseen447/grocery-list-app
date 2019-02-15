class List < ActiveRecord::Base
  has_many :list_items
  has_many :items, through: :list_items

  belongs_to :user

  accepts_nested_attributes_for :list_items

  def list_items_attributes=(list_items_attributes)
    list_items_attributes.values.each do |list_item_attribute|
      @list_item = self.list_items.find(list_item_attribute[:id])
      @list_item.update_column(:quantity, list_item_attribute[:quantity])
    end
  end

end
