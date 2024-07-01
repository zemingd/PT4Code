s = gets.chomp.chars
puts s.uniq.length == 1 ? "No" : "Yes"