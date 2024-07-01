s = gets.chomp.to_s
we = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
for i in 0..6
  puts 7-i if we[i] == s
end
