a = gets.split(" ").map{|v| v.to_i}
puts (1..a[0]).to_a[-a[1]]