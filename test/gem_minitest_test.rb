require 'test_helper'
require 'gem_minitest'

class GemMinitestTest < Minitest::Test
	def setup
		@my = GemMiniTest.new
	end

	#oddメソッドテスト
	#整数を入力として受け取り，値が奇数ならば真を返す
	def test_odd
		assert_equal(false, @my.odd(0))
		assert_equal(true,  @my.odd(1))
		assert_equal(false, @my.odd(2))
	end

	#check_numberメソッドテスト
	def test_check_number
		assert_equal(false, @my.check_number(0))
		assert_equal(false, @my.check_number(123))
		assert_equal(false, @my.check_number(1001))
		assert_equal(true,  @my.check_number(1000))
	end

	#enough_lengthメソッドテスト
	def test_enough_length
		#境界値チェック2,3,8,9桁
		assert_equal(false, @my.enough_length("12"))
		assert_equal(true,  @my.enough_length("123"))
		assert_equal(true,  @my.enough_length("12345678"))
		assert_equal(false, @my.enough_length("123456789"))
	end

	#divideメソッドテスト
	def test_divide
		assert_equal(2, @my.divide(50, 25))
		assert_equal(20, @my.divide(200, 10))
	end

	#fizz_buzzメソッドテスト
	def test_fizz_buzz
		assert_equal("",         @my.fizz_buzz(0))
		assert_equal("",         @my.fizz_buzz(1))
		assert_equal("Fizz",     @my.fizz_buzz(3))
		assert_equal("",         @my.fizz_buzz(4))
		assert_equal("Buzz",     @my.fizz_buzz(5))
		assert_equal("",         @my.fizz_buzz(14))
		assert_equal("FizzBuzz", @my.fizz_buzz(15))
		assert_equal("",         @my.fizz_buzz(16))
		assert_equal("",         @my.fizz_buzz(101))
	end

	#引数に数値を1 つとる．3 の倍数の時は”Fizz”を返す．5 の倍数の時は”Buzz”を返す．3 と5 の公倍数のときは”FizzBuzz”を返す．
	def test_hello
		assert_output(/Hello/) { @my.hello}
	end
end
