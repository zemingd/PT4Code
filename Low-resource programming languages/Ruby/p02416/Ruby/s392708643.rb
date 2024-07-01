
while true
x = gets.chomp.split.map(&:to_i)
break if x == 0
sum = 0

for i in 1..(x.length)
 sum += (x[i-1] % 10).to_i
end
puts sum
end

