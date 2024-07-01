
while true
x = gets.split.map(&:to_i)
break if x == 0

for i in 0..x.length
 sum += x % 10
end
end

