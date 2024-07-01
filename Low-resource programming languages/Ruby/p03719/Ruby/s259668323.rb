a,b,c = gets.chomp.split(" ").map(&:to_i)
puts c.between?(a,b) ?  "Yes" : "No"
