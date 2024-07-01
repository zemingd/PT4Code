n = gets.chomp.to_i
a = gets.chomp.to_i
b = n % 500
puts (b <= a)? "Yes" : "No"