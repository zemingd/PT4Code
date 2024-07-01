n, d = gets.chomp.split.map(&:to_i)
matrix = n.times.map { gets.chomp.split.map(&:to_i) }

count = 0
matrix.combination(2).each do |x|
  square_sum = d.times.inject(0) { |sum, i| sum + (x[0][i] - x[1][i])**2 }
  count += 1 if Math.sqrt(square_sum) % 1 == 0
end

puts count
