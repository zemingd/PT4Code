n = gets.to_i
matrix = n.times.map { gets.split.map(&:to_i) }

ret = matrix.combination(2).count do |x, y|
  square = x.zip(y).inject(0) { |sum, s| sum + (s[0] - s[1])**2 }
  Math.sqrt(square) % 1 == 0
end
puts ret