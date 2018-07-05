require_relative '../libs/array_rotation'
require 'test/unit'

class ArrayRotationTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @target = ArrayRotation.new
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def teardown
    # Do nothing
  end

  # a = [1,2,3,4,5], k = 1, result = [5,1,2,3,4]
  def test_rotation_one
    assert_equal([5,1,2,3,4], @target.rotate([1,2,3,4,5], 1))
  end

  # a = [1,2,3,4,5], k = 0, result = [1,2,3,4,5]
  def test_rotation_zero
    assert_equal([1,2,3,4,5], @target.rotate([1,2,3,4,5], 0))
  end

  # a = [1,2,3,4,5], k = 3, result = [3,4,5,1,2]
  def test_rotation_three
    assert_equal([3,4,5,1,2], @target.rotate([1,2,3,4,5], 3))
  end

  # a = [1,2,3,4,5], k = 5, result = [1,2,3,4,5]
  def test_rotation_five
    assert_equal([1,2,3,4,5], @target.rotate([1,2,3,4,5], 5))
  end

  # a = [1,2,3,4,5], k = 6, result = [5,1,2,3,4]
  def test_rotation_six
    assert_equal([5,1,2,3,4], @target.rotate([1,2,3,4,5], 6))
  end

  # a = [4], k = 6, result = [4]
  def test_rotation_small_array
    assert_equal([4], @target.rotate([4], 6))
  end

  # a = [3,4,5,6], k = 67725465, result = [3,4,5,6]
  def test_rotation_large_k
    assert_equal([6, 3, 4, 5], @target.rotate([3,4,5,6], 67725465))
  end

end