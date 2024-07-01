x = gets.to_i

num = [1]
b = 2
p = 2

while true
  result = b ** p
  if b ** 2 > x
  	break
  elsif result > x
  	b += 1
  	p = 2
  else
  	num << result
  	p += 1
  end
end

puts num.max
