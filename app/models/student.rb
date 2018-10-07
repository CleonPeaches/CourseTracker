class Student < ApplicationRecord
  has_many :enrollments
  has_many :sections, :through => :enrollments

  validates_presence_of :name, :nine_hundred_number, :sections
end
