s = gets.chomp.chars.sort.join
t = gets.chomp.chars.sort{|a, b| b <=> a}.join
puts s < t ? "Yes" : "No"