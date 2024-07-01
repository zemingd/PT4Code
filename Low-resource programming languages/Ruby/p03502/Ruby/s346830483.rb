a = gets.to_i
x = a
x = x * 10
b = 0
c = 12
while (c > 0)
 b = b + x%10
 x = x/10
 c = c - 1
end
if a%b == 0
puts "Yes"
else
puts "No"
end