n =  gets.chomp("").to_i
 
a = gets.split(" ").map(&:to_i)
 
puts a.inject(:+) - n