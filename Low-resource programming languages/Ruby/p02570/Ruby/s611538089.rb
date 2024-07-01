d,t,s = gets.split.map(&:to_i)
if ((d.to_f)/s) <= t
  puts "Yes"
else
  puts "No"
end