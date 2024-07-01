n = gets.to_i
x = gets.to_s
x = x.split(" ").map(&:to_i)
sum = 0
x = x.sort
intermediate = x.last - x.first
x.each do |i|
  sum += (i - intermediate) ** 2
end

puts "#{sum}"
