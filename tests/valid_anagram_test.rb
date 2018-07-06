require_relative '../libs/valid_anagram'
require 'test/unit'

class ValidAnagramTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @target = ValidAnagram.new
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # s = "binary", t = "brainy" result = true
  def test_brainy
    assert_true(@target.is_anagram("binary", "brainy"))
  end

  # s = "rat", t = "car" result = false
  def test_car
    assert_false(@target.is_anagram("rat", "car"))
  end

  # s = "BAT", t = "tab" result = false (different case)
  def test_tab
    assert_false(@target.is_anagram("BAT", "tab"))
  end

  # s = "rail safety", t = "fairy tales" result = true
  def test_fairy_tales
    assert_true(@target.is_anagram("rail safety", "fairy tales"))
  end

  # s = "the eyes", t = "they see" result = true
  def test_they_see
    assert_true(@target.is_anagram("the eyes", "they see"))
  end

  # s = "debit card", t = "bad credit" result = true
  def test_bad_credit
    assert_true(@target.is_anagram("debit card", "bad credit"))
  end

  # s = "action man", t = "cannot aim" result = true
  def test_cannot_aim
    assert_true(@target.is_anagram("action man", "cannot aim"))
  end

  # s = "", t = "" result = true
  def test_empty
    assert_true(@target.is_anagram("action man", "cannot aim"))
  end

  # s = "batt", t = "tab" result = false
  def test_bad_length
    assert_false(@target.is_anagram("batt", "tab"))
  end


end