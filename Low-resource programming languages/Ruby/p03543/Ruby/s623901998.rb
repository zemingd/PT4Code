n = gets.to_i
puts ((n / 10) % 111 == 0 || n % 111 == 0)? "Yes" : "No"