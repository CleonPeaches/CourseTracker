class Section < ApplicationRecord
  has_many :enrollments
  belongs_to :course
  has_many :students, :through => :enrollments
  @semester = ["Fall 2018", "Spring 2019", "Summer 2019"]

  validates_presence_of :number, :semester, :room, :course

  def to_s
    "#{course.name} - #{semester} - Section: #{number}"
  end
end
