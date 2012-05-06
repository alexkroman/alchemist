require File.dirname(__FILE__) + '/../test_helper'

class UnitTest < Test::Unit::TestCase
  fixtures :units

  # Replace this with your real tests.
  def test_truth
    assert_kind_of Unit, units(:first)
  end
end
