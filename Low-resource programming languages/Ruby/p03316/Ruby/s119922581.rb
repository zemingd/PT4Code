n = gets.to_i
sum = n.to_s.split("").map{|s| s.to_i}.inject(:+)
ans = (n % sum == 0) ? "Yes" : "No"
puts ans