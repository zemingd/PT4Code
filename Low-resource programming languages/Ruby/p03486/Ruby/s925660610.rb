s = gets.chomp.to_s.split(//).sort.join
t = gets.chomp.to_s.split(//).sort.reverse.join

puts s < t ? "Yes" : "No"
