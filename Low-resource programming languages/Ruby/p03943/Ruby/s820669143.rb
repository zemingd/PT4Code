s = gets.chomp.split(" ").map{|i| i.to_i}
s.sort!
puts (s[0] + s[1] == s[2] ? "Yes" : "No")
