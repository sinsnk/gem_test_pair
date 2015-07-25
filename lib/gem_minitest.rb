#require "gem_minitest/version"

class GemMinitest
	#require "gem_minitest/version"
	require 'time'
	require 'prime'
	
	#��������͂Ƃ��Ď󂯎��C�l����Ȃ�ΐ^��Ԃ�
	def odd(num)
		if (num % 2)==1 then
			return true
		else
			return false
		end
	end
	
	#������0 �ȊO�ł͂��܂�4 ���̐����ł���C�Ȃ����C�l�������Ȃ�ΐ^��Ԃ�
	def check_number(num)
		#0�`�F�b�N
		if num==0 then
			return false
		end
		
		#���`�F�b�N
		if num.to_s.length != 4 then
			return false
		end
		
		#�����`�F�b�N
		if odd(num) then
			return false
		else
			return true
		end
	end
	
	#��������󂯎��C���̒�����3 �����ȏ�C8 �����ȉ��ł���ΐ^��Ԃ�
	def enough_length(str)
		#�ŏ��l�`�F�b�N
		if str.length < 3 then
			return false
		end
		
		#�ő�l�`�F�b�N
		if str.length > 8 then
			return false
		end
		
		return true
	end
	
	#�����Ƃ��Ċ��鐔�Ɗ����鐔�����C����Z���������ʂ�Ԃ��D�������C0 �Ŋ���Z���������O�𔭐�����
	def divide(num_n, num_d)
		return (num_n / num_d).to_f
	end
	
	#�����ɐ��l��1 �Ƃ�D3 �̔{���̎��́hFizz�h��Ԃ��D5 �̔{���̎��́hBuzz�h��Ԃ��D3 ��5 �̌��{���̂Ƃ��́hFizzBuzz�h��Ԃ��D
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
	
	#�����ɐ��l��1 �Ƃ�D3 �̔{���̎��́hFizz�h��Ԃ��D5 �̔{���̎��́hBuzz�h��Ԃ��D3 ��5 �̌��{���̂Ƃ��́hFizzBuzz�h��Ԃ��D
	def hello()
		puts "Hello"
	end
end
