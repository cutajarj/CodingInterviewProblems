require_relative '../libs/../libs/first_non_repeating'
require 'test/unit'

class FirstNonRepeatingTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @target = FirstNonRepeating.new
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.
  def teardown
    # Do nothing
  end

  # text = "seashore", result = "a" since both "s" and "e" repeat
  def test_seashore
    assert_equal("a", @target.find_first_non_repeating("seashore"))
  end

  # text = "fudgefudge", result = "" since all of the characters repeat
  def test_fudgefudge
    assert_equal("", @target.find_first_non_repeating("fudgefudge"))
  end

  # text = "learning javascript is pretty lame", result = "g"
  def test_long_string
    assert_equal("g", @target.find_first_non_repeating("learning javascript is pretty lame"))
  end

  # text = "", result = ""
  def test_empty_str
    assert_equal("", @target.find_first_non_repeating(""))
  end

  # text = "aaaAaaa", result = "A"
  def test_upper_lower
    assert_equal("A", @target.find_first_non_repeating("aaaAaaa"))
  end

  # text = "fudge fudge", result = " " since all of the characters repeat
  def test_space
    assert_equal(" ", @target.find_first_non_repeating("fudge fudge"))
  end
end