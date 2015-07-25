require 'test_helper'

class GemMiniTestTest < Minitest::Test
  def setup
    @main = GemMiniTest::Main.new
  end
  
  def test_that_it_has_a_version_number
    refute_nil ::GemMinitest::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_odd?
    assert @main.odd?(1) == true
  end

  def test_check_number?
    assert @main.check_number?(2304) == true
  end

  def test_enough_length?
    assert @main.enough_length?('hogehoge') == true
  end

  def test_divide
    assert @main.divide(10, 3) == 3
  end

  def test_fizz_buzz
    assert @main.fizz_buzz(3) == 'Fizz'
  end

  def test_hello
    assert @main.hello == 'Hello'
  end
end
