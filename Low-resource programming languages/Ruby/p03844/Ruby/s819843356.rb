n = gets.chomp.split(" ")
puts n[1] == "+" ? (n[0].to_i + n[2].to_i) : (n[0].to_i - n[2].to_i)