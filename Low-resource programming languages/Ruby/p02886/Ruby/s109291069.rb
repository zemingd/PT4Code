n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)

sum = 0
d.each do |i|
  sum += i
end

result = 0
d.each do |j|
  result += j * (sum - j)
end

puts result / 2