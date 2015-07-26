require 'test_helper'
require 'gem_minitest'

class GemMinitestTest < Minitest::Test
	def setup
		@my = GemMiniTest.new
	end

	#odd���\�b�h�e�X�g
	#��������͂Ƃ��Ď󂯎��C�l����Ȃ�ΐ^��Ԃ�
	def test_odd
		assert_equal(false, @my.odd(0))
		assert_equal(true,  @my.odd(1))
		assert_equal(false, @my.odd(2))
	end

	#check_number���\�b�h�e�X�g
	def test_check_number
		assert_equal(false, @my.check_number(0))
		assert_equal(false, @my.check_number(123))
		assert_equal(false, @my.check_number(1001))
		assert_equal(true,  @my.check_number(1000))
	end

	#enough_length���\�b�h�e�X�g
	def test_enough_length
		#���E�l�`�F�b�N2,3,8,9��
		assert_equal(false, @my.enough_length("12"))
		assert_equal(true,  @my.enough_length("123"))
		assert_equal(true,  @my.enough_length("12345678"))
		assert_equal(false, @my.enough_length("123456789"))
	end

	#divide���\�b�h�e�X�g
	def test_divide
		assert_equal(2, @my.divide(50, 25))
		assert_equal(20, @my.divide(200, 10))
	end

	#fizz_buzz���\�b�h�e�X�g
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

	#�����ɐ��l��1 �Ƃ�D3 �̔{���̎��́hFizz�h��Ԃ��D5 �̔{���̎��́hBuzz�h��Ԃ��D3 ��5 �̌��{���̂Ƃ��́hFizzBuzz�h��Ԃ��D
	def test_hello
		assert_output(/Hello/) { @my.hello}
	end
end
