a = gets.strip.split.map(&:to_i).sort
K = gets.strip.to_i

a[-1] = a[-1] * (K * 2)
puts a.inject(:+)
