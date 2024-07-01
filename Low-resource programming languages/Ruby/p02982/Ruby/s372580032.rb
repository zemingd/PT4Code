require 'complex'

N, D = gets.chomp.split(' ').map(&:to_i)
Vertexes = N.times.map{ gets.chomp.split(' ').map(&:to_i)[0..D] }

distances = Vertexes.combination(2).map do |a, b|
  norm = a.zip(b).reduce(0) { |d, ab| d + (ab[0]-ab[1])**2 }
  distance = Math.sqrt(norm)
end

puts distances.reduce(0) { |count, distance|
  count + (distance.to_i == distance ? 1 : 0)
}
