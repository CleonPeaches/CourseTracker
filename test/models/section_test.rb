require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  def setup
    @c = Section.new
  end

  test 'must_have_semester' do
    @c.number = 1
    @c.course_id = 1
    @c.room = "Gym"

    assert_throws(@c, "exception") {throw @c}
  end

  test 'must_have_number' do
    @c.number = nil
    @c.course_id = 1
    @c.room = "Gym"
    @c.semester = "Spring 2019"

    assert_throws(@c, "exception") {throw @c}
  end

  test 'must_have_course_id' do
    @c.number = 1
    @c.course_id = nil
    @c.room = "Gym"
    @c.semester = "Spring 2019"

    assert_throws(@c, "exception") {throw @c}
  end

  test 'must_have_room' do
    @c.number = 1
    @c.course_id = 1
    @c.room = nil
    @c.semester = "Spring 2019"

    assert_throws(@c, "exception") {throw @c}
  end
end
