arr = [1]
num = gets.to_i
time = 0
40.times do |i|
	tmp = arr[-1] * 2
	if tmp == num
		time = i + 2	
      	break
	elsif tmp > num
		time = i + 1
      	break
	end
	arr << tmp
end

def factorial(n)
    return 1 if n == 1
    return factorial(n-1) * 2 + 1
end

p factorial(time)