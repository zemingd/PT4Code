n = gets.to_i
s = gets.to_s.chomp
half_s = s.slice(0..n/2-1)
puts s == half_s + half_s ? "YES" : "NO"
