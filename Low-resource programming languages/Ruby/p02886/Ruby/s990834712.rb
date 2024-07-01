n = gets.to_i
d = gets.chomp.split.map(&:to_i)

sum = 0

d.combinaton(2) do |x, y|
  sum += x * y
end

puts sum
