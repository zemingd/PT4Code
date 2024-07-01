a = gets.strip.split.map(&:to_i).sort
K = gets.strip.to_i

res = a[-1]
K.times { res *= 2 }

a[-1] = res
puts a.inject(:+)
