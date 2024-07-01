require 'complex'

N, D = gets.chomp.split(' ').map(&:to_i)
coos = N.times.map {
  gets.chomp.split(' ').map(&:to_i)
}
puts coos.combination(2).map { |a, b|
  Math.sqrt(a.zip(b).map { |y, z| (y - z)**2 }.reduce(:+))
}.select { |n|
  n - n.to_i == 0
}.size