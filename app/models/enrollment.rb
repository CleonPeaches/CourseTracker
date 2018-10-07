class Enrollment < ApplicationRecord
  belongs_to :section
  belongs_to :student

  validates_presence_of :section, :student
end
