ab = gets.split.map(&:to_i).inject(:+)
puts ab.even? ? ab/2 : 'IMPOSSIBLE'