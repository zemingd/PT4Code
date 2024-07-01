s = gets.chomp
t = gets.chomp

s2 = s.split("").sort.join
t2 = t.split("").sort.reverse.join

puts s2 < t2 ? "Yes" : "No"