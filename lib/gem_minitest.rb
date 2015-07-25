require "gem_minitest/version"

module GemMiniTest
  class Main
    def odd?(n)
      n % 2 == 1 
    end

    def check_number?(n)
      n % 2 == 0
    end 

    def enough_length?(s)
      s.length >= 3 && s.length <= 8
    end

    def divide(n, m)
      n / m
    end

    def fizz_buzz(n)
      result = ''
      if n % 3 == 0
        result += 'Fizz'
      end
      if n % 5 == 0
        result += 'Buzz'
      end
      result
    end

    def hello
      p 'Hello'
    end
  end
end
