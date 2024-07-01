d, t, s = gets.split.map(&:to_i)
if d <= t*s
  puts "Yes"
else
  puts "No"
end