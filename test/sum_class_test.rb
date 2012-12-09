require "test/unit"
require "Gem_02/sum_class"
require "Gem_02/twitter_worker"

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
  def test_sum
    instance = Gem02::SumClass::new
    res = instance.sum(1, 2);
    assert(res == 3)
  end

  def test_mul
    instance = Gem02::SumClass::new
    res = instance.mul(1, 2);
    assert(res == 2)
  end

  def test_correct_init_good
    instance = Gem02::TwitterWorker.new('123', '123')
    res = instance.correct_init?
    assert(res == true)
  end

  def test_correct_init_empty_password
    instance = Gem02::TwitterWorker.new('123', '')
    res = instance.correct_init?
    assert(res == false)
  end

  def test_correct_init_empty_login
    instance = Gem02::TwitterWorker.new('', '123')
    res = instance.correct_init?
    assert(res == false)
  end

  def test_correct_init_full_empty
    instance = Gem02::TwitterWorker.new('', '')
    res = instance.correct_init?
    assert(res == false)
  end


end