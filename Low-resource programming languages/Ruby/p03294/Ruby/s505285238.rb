n = gets.to_i
a = gets.split.map(&:to_i)
sum = a.inject(&:+)
puts sum-n