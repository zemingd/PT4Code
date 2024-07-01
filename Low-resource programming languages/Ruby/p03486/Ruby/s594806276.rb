s = gets.chomp.split("").sort
t = gets.chomp.split("").sort.reverse
puts s.join("") < t.join("") ? "Yes" : "No"