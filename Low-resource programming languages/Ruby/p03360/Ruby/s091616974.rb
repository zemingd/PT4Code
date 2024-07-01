a = gets.split.map(&:to_i)
k = gets.to_i
p a.inject(:+) + a.max*2**k - a.max