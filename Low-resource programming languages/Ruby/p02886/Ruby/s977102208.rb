_n = gets.to_i
d = gets.split.map(&:to_i)
answer = d.combination(2).map{|a,b| a * b}.reduce(:+)
puts answer