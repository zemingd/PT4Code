d,t,s = gets.strip.split.map(&:to_i)
if s*t >= d
  puts "Yes"
else
  puts "No"
end