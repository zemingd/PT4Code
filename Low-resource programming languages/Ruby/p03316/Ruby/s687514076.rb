n = gets.chomp.to_i
puts ((n%n.to_s(2).count("1"))== 0)? "Yes" : "No"