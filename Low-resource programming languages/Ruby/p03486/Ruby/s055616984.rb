s = gets.chomp.chars.sort.join.to_s
t = gets.chomp.chars.sort.reverse.join.to_s

puts s < t ? "Yes" :"No"