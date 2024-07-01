require "prime"
a,b = gets.split.map(&:to_i)

def dasu(num1, num2)
	if num1.gcd(num2) != 1
	  result = []
	  i = 2
	  while i <= num1 do
	    if num1 % i == 0
	      result << i
	      num1 = num1 / i
	    else
	      i += 1
	    end
	  end
	  return result
	else
		return Array.new
	end
end

first = dasu(a, b)
second = dasu(b, a)

yaku = Array.new
yaku = first & second
yaku << 1
print yaku.count
