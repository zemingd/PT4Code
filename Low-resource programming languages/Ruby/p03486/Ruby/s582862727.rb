s=gets.chomp.split("").sort.join
t=gets.chomp.split("").sort.join
puts s < t.reverse ? "Yes" : "No"