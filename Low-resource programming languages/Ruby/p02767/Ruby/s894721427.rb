n = gets.to_i

x = gets.split.map(&:to_i)

xx = x.size - 1

sum = 0

x.each do |i|
  sum += (i - 2) **2
end

puts sum