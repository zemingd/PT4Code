d, t, s = gets.split.map(&:to_i)

time = d/s.to_f

if t >= time.to_f
  puts "Yes"
else
  puts "No"
end