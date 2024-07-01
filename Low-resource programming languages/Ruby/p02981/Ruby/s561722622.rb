#a = gets.to_i
a,b,c = gets.split.map(&:to_i)
puts a * b > c ? c : a * b
