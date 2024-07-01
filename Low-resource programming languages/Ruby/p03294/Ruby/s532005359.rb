N = gets.to_i
As = gets.split.map(&:to_i)

puts As.inject(0){|s, a| s + (a - 1)}