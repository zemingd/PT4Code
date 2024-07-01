a,b,c = gets.split.map{|tmp|tmp.to_i}
puts a<=c && c<=b ? "Yes" : "No"