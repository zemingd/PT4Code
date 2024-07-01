n = gets.to_i
d = gets.split.map(&:to_i)
count = 0

sum = d.inject(:+)
n.times do |i|
  sum -= d[i]
  count += d[i] * sum
end

puts count
