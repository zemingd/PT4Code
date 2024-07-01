s = gets.strip.split("")
puts s.uniq.count == 1 ? "No" : "Yes"