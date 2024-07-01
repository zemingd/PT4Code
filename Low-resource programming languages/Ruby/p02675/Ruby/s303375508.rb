n = gets.to_i
puts "hon" if [2, 4, 5, 7, 9].count(n % 10) == 1
puts "pon" if [0, 1, 6, 8].count(n % 10) == 1
puts "bon" if [3].count(n % 10) == 1