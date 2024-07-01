s = gets.chomp
n = s.length
v = s[0...(n-1)/2] 
w = s[((n-1)/2+1).round..n]
puts v == v.reverse && s == s.reverse && w == w.reverse ? "Yes" : "No"
