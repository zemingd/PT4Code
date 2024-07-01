i = gets.split(" ")[1].to_i
puts (str = gets.chomp).tr(str[i-1],str[i-1].downcase)