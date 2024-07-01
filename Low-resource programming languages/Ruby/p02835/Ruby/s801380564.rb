ary = gets.split(" ").map(&:to_i)
sum = 0
ary.each do |i|
  sum += i
end

if sum >= 22
  puts "win"
else
  puts "bust"
end