require File.dirname(__FILE__) + '/../test_helper'

class MaterialTest < Test::Unit::TestCase
  fixtures :materials

  # Replace this with your real tests.
  def test_truth
    assert_kind_of Material, materials(:first)
  end
end
