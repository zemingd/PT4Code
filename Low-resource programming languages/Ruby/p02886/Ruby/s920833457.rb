N = gets.to_i
Ds = gets.split.map(&:to_i)

puts Ds.combination(2).inject(0){|s, (x, y)| s + x*y}