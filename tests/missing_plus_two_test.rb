require_relative '../libs/missing_plus_two'
require 'test/unit'

class MissingPlusTwoTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @target = MissingPlusTwo.new
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # a = [0,2,4,8,10], result = 6
  def test_missing_six
    assert_equal(6, @target.find_missing_number([0,2,4,8,10]))
  end

  # a = [0,2,4,6,10], result = 8
  def test_missing_eight
    assert_equal(8, @target.find_missing_number([0,2,4,6,10]))
  end

  # a = [2,4,6], result = 0
  def test_missing_zero
    assert_equal(0, @target.find_missing_number([2,4,6]))
  end

  # checks no linear algorithm was used
  def test_missing_large
    start = Time.now
    a = Array.new(10000000){ |i| (i*2) }
    a[9999999] = 20000000
    finish = Time.now
    time_to_create = (finish-start) * 1000.0

    start = Time.now
    assert_equal(19999998, @target.find_missing_number(a))
    finish = Time.now
    time_to_execute = (finish-start) * 1000.0
    time_to_create
    assert_true(time_to_execute < time_to_create / 5.0, "Algorithm took #{time_to_execute} ms to execute. That's way too slow!")
  end

end