N, X = gets.split.map(&:to_i)
m = []
N.times do
  m << gets.to_i
end
p N + (X - m.inject(:+)) / m.min