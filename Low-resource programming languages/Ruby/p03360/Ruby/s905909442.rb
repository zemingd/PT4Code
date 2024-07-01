a, b, c = gets.chop.split.map(&:to_i)
k = gets.chop.to_i

max = [a, b, c].max
k.times do
  max = max * 2
end
puts a + b + c - [a, b, c].max + max
