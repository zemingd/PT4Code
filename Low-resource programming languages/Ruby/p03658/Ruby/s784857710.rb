N, K = gets.split.map(&:to_i)
L = gets.split.map(&:to_i).sort.reverse
puts K.times.map { |k| L[k] }.inject(&:+)
