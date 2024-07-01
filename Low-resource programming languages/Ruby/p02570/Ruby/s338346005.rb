d, t, s = gets.split.map(&:to_i)

time = d/s

if t >= time
  puts "Yes"
else
  puts "No"
end