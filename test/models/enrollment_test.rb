require 'test_helper'

class EnrollmentTest < ActiveSupport::TestCase
  def setup
    @e = Enrollment.new
  end

  test 'must_have_course_id' do
    @e.section_id = 1

    assert_throws(@e, "exception") {throw @e}
  end

  test 'must_have_student_id' do
    @e.section_id = nil
    @e.student_id = 1

    assert_throws(@e, "exception") {throw @e}
  end
end
