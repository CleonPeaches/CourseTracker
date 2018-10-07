class Course < ApplicationRecord
  has_many :sections
  @department = ["CS", "CIS", "MTH"]

  validates_presence_of :credits, :number, :name, :department
end
