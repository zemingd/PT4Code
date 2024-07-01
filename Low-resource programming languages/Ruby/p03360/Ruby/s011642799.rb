a = gets.split.map(&:to_i)
k = gets.to_i
puts (a.inject(:+) - a.max + ([a.max] * (k + 1)).inject{|a| a * 2 })