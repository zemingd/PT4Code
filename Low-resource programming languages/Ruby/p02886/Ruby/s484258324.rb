n = gets.to_i
d = gets.split.map(&:to_i)

sum = 0

d.combination(2) do |x, y|
  sum += x * y
end

puts sum
