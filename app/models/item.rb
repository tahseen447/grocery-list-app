class Item < ApplicationRecord
  has_many :list_items
  has_many :lists, through: :list_items

  has_many :store_items
  has_many :stores, through: :store_items

  validates :name, presence: true
  validates :description, presence: true
  validates :department, presence: true
  validates_associated :store_items

  accepts_nested_attributes_for :store_items

# scope :produce_department, -> { where(department: 'Produce') }
# scope :deli_department, -> { where(department: 'Deli') }
# scope :frozen_department, -> { where(department: 'Frozen') }
# scope :dairy_department, -> { where(department: 'Dairy') }
# scope :baby_department, -> { where(department: 'Baby') }
# scope :misc_department, -> { where(department: 'Miscellaneous') }


 def self.departments
   select(:department).distinct
 end

 def self.departments_by_name
   departments.map {|item| item.department}
 end

 def self.sort_by_department(department)
  where("department = ?", department)
 end

 def store_items_attributes=(store_item_attributes)
      store_item_attributes.values.each do |store_item_attribute|
        self.store_items.build(store_item_attribute)
      end
    end

end
