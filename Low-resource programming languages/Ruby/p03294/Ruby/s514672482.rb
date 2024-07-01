n = gets.to_i
as = gets.split.map(&:to_i)

puts as.inject(0) { |r, a| r + (a - 1) }
