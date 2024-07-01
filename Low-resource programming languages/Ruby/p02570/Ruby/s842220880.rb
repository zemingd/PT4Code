d, t, s = gets.chomp.split(" ").map{|num| num = num.to_i}
return d <= t * s ? "YES" : "NO"