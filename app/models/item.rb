class Item < ApplicationRecord
  has_many :list_items
  has_many :lists, through: :list_items

  has_many :store_items
  has_many :stores, through: :store_items

  validates :name, presence: true
  validates :name, uniqueness: true

 scope :produce_department, -> { where(department: 'Produce') }
 scope :deli_department, -> { where(department: 'Deli') }
 scope :frozen_department, -> { where(department: 'Frozen') }
 scope :dairy_department, -> { where(department: 'Dairy') }
 scope :baby_department, -> { where(department: 'Baby') }
 scope :misc_department, -> { where(department: 'Miscellaneous') }


 def self.departments
   select(:department).distinct
 end

 def self.departments_by_name
   departments.map {|item| item.department}
 end

 def self.sort_by_department(department)
  case department
   when "Produce"
     produce_department
   when "Deli"
     deli_department
   when "Frozen"
     frozen_department
   when "Dairy"
     dairy_department
   when "Baby"
     baby_department
   when "Miscellaneous"
     misc_department
   else
     all
   end
 end

end
