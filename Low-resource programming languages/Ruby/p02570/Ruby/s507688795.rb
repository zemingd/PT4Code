d,t,s = gets.split.map(&:to_i)
if t * s >= d
  puts "Yes"
else
  puts "No"
end