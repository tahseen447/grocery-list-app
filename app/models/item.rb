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


end
end
