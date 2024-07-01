s, t = gets.chomp.chars, gets.chomp.chars
puts s.sort.join < t.sort.reverse.join ? "Yes" : "No"