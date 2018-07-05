require_relative '../libs/nesting'
require 'test/unit'

class NestingTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @target = Nesting.new
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # text = "()", result = true
  def test_simple_case
    assert_true(@target.check_if_properly_nested("()"))
  end

  # text = "[()()]", result = true
  def test_double_within
    assert_true(@target.check_if_properly_nested("[()()]"))
  end

  # text = "[(]()]", result = false
  def test_bad_double_within
    assert_false(@target.check_if_properly_nested("[(]()]"))
  end

  # text = "[(])", result = false
  def test_bad_overlap
    assert_false(@target.check_if_properly_nested("[(])"))
  end

  # text = "[{()}]", result = true
  def test_triple_nested
    assert_true(@target.check_if_properly_nested("[{()}]"))
  end

  # text = "((()))", result = true
  def test_triple_round_nested
    assert_true(@target.check_if_properly_nested("((()))"))
  end

  # text = "((())", result = false
  def test_bad_triple_round_nested
    assert_false(@target.check_if_properly_nested("((())"))
  end

  # text = "()]]", result = false
  def test_bad_triple_nested
    assert_false(@target.check_if_properly_nested("()]]"))
  end

  # text = "()[]{}()[]{}", result = true
  def test_multi
    assert_false(@target.check_if_properly_nested("()[]{}()[]{}"))
  end

end