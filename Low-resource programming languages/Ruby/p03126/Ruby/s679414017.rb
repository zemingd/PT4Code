N, M = gets.split(' ').map(&:to_i)
matrix = []

N.times do
  matrix.push(gets.split(' ').map(&:to_i).drop(1))
end

puts matrix.each.inject(:&).length