n = gets.to_i
d = gets.split.map(&:to_i)
sum = 0

d.combination(2).to_a.each do |x|
  sum += x[0] * x[1]
end

puts sum
