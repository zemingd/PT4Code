n = gets.to_i
a = gets.split.map(&:to_i)
puts (a.inject(0) { |sum, i| sum += i}) - n
