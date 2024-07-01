N, X = gets.split.map(&:to_i)
ms = []
N.times do |i|
    ms[i] = gets.to_i
end

sum = ms.inject(:+)
min = ms.min

puts N + (X - sum)/min