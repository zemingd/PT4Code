d, t, s = gets.strip.split.map(&:to_i)
if d <= t * s
  puts "Yes"
else
  puts "No"
end
