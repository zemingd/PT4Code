s = gets.chomp.split('').uniq

puts s.size == 1 ? "No" : "Yes"