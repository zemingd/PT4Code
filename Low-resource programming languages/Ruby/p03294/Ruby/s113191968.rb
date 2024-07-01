n = gets.to_i
as = gets.split.map(&:to_i)
p as.inject(:+) - as.size