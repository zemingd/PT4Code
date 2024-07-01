d, t, s = gets.split(" ").map(&:to_i)
# puts t * s
if t * s >= d
  puts "Yes"
else
  puts "No"
end