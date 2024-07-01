a = gets.to_i
b = 0
c = 10
while c > 0
 b = b + a%10
 b = b/10
 c = c - 1
end
if a%b == 0
puts "Yes"
else
puts "No"
end