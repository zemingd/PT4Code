n, k = gets.split.map(&:to_i)

p [*1..n].map { |i| (1r / n) * (1r / 2) ** (k / i).bit_length }.inject(:+).to_f
