a, b, c = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i

list = [a, b, c]

k.times do
  max = list.max
  list[list.index(max)] = max * 2
end

puts list.inject(:+)