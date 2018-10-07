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

    assert_throws(@c, "exception") {throw @c}
  end

  test 'must_have_credits' do
    @c = Course.new
    @c.name = "Web Apps"
    @c.number = "390p"
    @c.department = "CS"

    assert_throws(@c, "exception") {throw @c}
  end

  test 'must_have_department' do
    @c = Course.new
    @c.name = "Web Apps"
    @c.number = "390p"
    @c.credits = 1

    assert_throws(@c, "exception") {throw @c}
  end
end
