require File.dirname(__FILE__) + '/../test_helper'

class FormulaTest < Test::Unit::TestCase
  fixtures :formulas

  # Replace this with your real tests.
  def test_truth
    assert_kind_of Formula, formulas(:first)
  end
end
