require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  def setup
    @s = Student.new
  end

  test 'must_have_name' do
    @s.nine_hundred_number = 900123456

    assert_throws(@s, "exception") {throw @s}
  end

  test 'must_have_nine_hundred' do
    @s.nine_hundred_number = nil
    @s.name = "Bob"

    assert_throws(@s, "exception") {throw @s}
  end
end
