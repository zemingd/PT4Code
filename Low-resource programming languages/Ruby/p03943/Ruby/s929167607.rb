a,b,c =  gets.split(" ").map{|s| s.to_i}.sort
puts c == a + b ? "Yes" : "No"
