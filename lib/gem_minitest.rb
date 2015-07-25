#require "gem_minitest/version"

class GemMinitest
	#require "gem_minitest/version"
	require 'time'
	require 'prime'
	
	#整数を入力として受け取り，値が奇数ならば真を返す
	def odd(num)
		if (num % 2)==1 then
			return true
		else
			return false
		end
	end
	
	#引数が0 以外ではじまる4 桁の数字であり，なおかつ，値が偶数ならば真を返す
	def check_number(num)
		#0チェック
		if num==0 then
			return false
		end
		
		#桁チェック
		if num.to_s.length != 4 then
			return false
		end
		
		#偶数チェック
		if odd(num) then
			return false
		else
			return true
		end
	end
	
	#文字列を受け取り，その長さが3 文字以上，8 文字以下であれば真を返す
	def enough_length(str)
		#最小値チェック
		if str.length < 3 then
			return false
		end
		
		#最大値チェック
		if str.length > 8 then
			return false
		end
		
		return true
	end
	
	#引数として割る数と割られる数を取り，割り算をした結果を返す．ただし，0 で割り算をしたら例外を発生する
	def divide(num_n, num_d)
		return (num_n / num_d).to_f
	end
	
	#引数に数値を1 つとる．3 の倍数の時は”Fizz”を返す．5 の倍数の時は”Buzz”を返す．3 と5 の公倍数のときは”FizzBuzz”を返す．
	def fizz_buzz(num)
		if num==0 then
			return ""
		end
		
		if (((num % 3)==0) && ((num % 5)==0)) then
			return "FizzBuzz"
		end
		
		if (num % 3)==0 then
			return "Fizz"
		end
		
		if (num % 5)==0 then
			return "Buzz"
		end
		
		return ""
	end
	
	#引数に数値を1 つとる．3 の倍数の時は”Fizz”を返す．5 の倍数の時は”Buzz”を返す．3 と5 の公倍数のときは”FizzBuzz”を返す．
	def hello()
		puts "Hello"
	end
end
