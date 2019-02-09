class Item < ApplicationRecord
  has_many :list_items
  has_many :lists, through: :list_items

  has_many :store_items
  has_many :stores, through: :store_items

  validates :name, presence: true
  validates :name, uniqueness: true

 scope :produce_department, -> { where (department: 'Produce') }
 scope :deli_department, -> { where (department: 'Deli') }
 scope :frozen_department, -> { where (department: 'Frozen') }
 scope :dairy_department, -> { where (department: 'Dairy') }

def self.departments
  pluck(:department).distinct
end

def sort_by_department(department)
  case department
  when "Produce"
    self.produce_department
  when "Deli"
    self.deli_department
  when "Frozen"
    self.frozen_department
  when "Dairy"
    self.dairy_department
  end
end

end
