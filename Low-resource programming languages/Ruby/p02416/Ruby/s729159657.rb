
while true
x = gets.chomp.split.map(&:to_i)
break if x == 0
sum = 0

for i in 0..(x.length)
 sum += x[i] % 10
end
puts sum
end

