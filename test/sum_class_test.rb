require "test/unit"
require "Gem_02/sum_class"

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail
    instance = Gem02::SumClass::new
    res = instance.sum(1, 2);
    assert(res == 3)
    # To change this template use File | Settings | File Templates.
    #fail("Not implemented")
  end
end