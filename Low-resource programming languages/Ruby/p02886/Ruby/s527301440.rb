N = gets.to_i
D = gets.split.map(&:to_i)

sum = 0

D.combination(2) do |a, b|
  sum += a * b
end

puts sum
