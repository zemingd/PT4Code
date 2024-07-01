

x = gets.to_i

while x != 0
do
sum = 0
while x > 0
 sum += x%10
 x /= 10
end

puts sum
x = gets.to_i
end
