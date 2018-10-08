require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  def setup
    @c = Course.new
  end

  test 'must_have_name' do
    @c.number = "390p"
    @c.credits = 1
    @c.department = "CS"

    assert_throws(@c, "exception") {throw @c}
  end

  test 'must_have_number' do
    @c.name = "Web Apps"
    @c.credits = 1
    @c.department = "CS"
    @c.number = nil

    assert_throws(@c, "exception") {throw @c}
  end

  test 'must_have_credits' do
    @c.name = "Web Apps"
    @c.number = "390p"
    @c.department = "CS"
    @c.credits = nil

    assert_throws(@c, "exception") {throw @c}
  end

  test 'must_have_department' do
    @c.name = "Web Apps"
    @c.number = "390p"
    @c.credits = 1
    @c.department = nil

    assert_throws(@c, "exception") {throw @c}
  end
end
