n = gets.to_i
a = gets.split.map(&:to_i)

puts a.inject{|sum,n| sum + n} - n