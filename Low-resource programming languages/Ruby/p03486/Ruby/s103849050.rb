s,t = 2.times.map{gets.chomp.split("").sort.join}
if s < t
  puts "Yes"
else
  puts "No"
end