a,b,c = gets.split("").map{|i|i.to_i if i < 10}
puts [a,b,c].uniq.count == 2 ? "Yes" : "No"
