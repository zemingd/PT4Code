n = gets.chomp.chars
 
puts n.map { |e| e == "1" ? "9" : "1" }.join.to_i