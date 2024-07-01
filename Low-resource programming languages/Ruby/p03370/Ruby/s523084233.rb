m = []

N, X = gets.split(' ').map(&:to_i)
N.times do
  m.push(gets.to_i).sort
end

puts N + ((X - m.inject(:+)) / m.min)