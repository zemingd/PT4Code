n = gets.to_i
l = gets.split.map(&:to_i)

count = 0

l.combination(3) do |a, b, c|
  count += 1 if (a < b + c) && (b < c + a) && (c < a + b)
end

puts count
