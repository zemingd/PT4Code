s, t = 2.times.map { gets.chomp }
s = s.chars.sort.join
t = t.chars.sort.reverse.join

puts s < t ? "Yes" : "No"