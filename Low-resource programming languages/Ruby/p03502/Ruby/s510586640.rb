a = gets.to_i
b = 0
c = 10
while c > 0
 b = b + a%10
 c = c - 1
end
puts b
