N, X = gets.split(' ').map(&:to_i)
ms = []
sum = 0
N.times do
  m = gets.to_i
  sum += m
  ms.push(m)
end

puts N + (X - sum) / ms.min