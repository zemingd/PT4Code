d, t, s = gets.chomp.split(" ").map{|num| num = num.to_i}
print d <= t * s ? "YES" : "NO"