d, t, s = gets.split(" ").map(&:to_i)

if d + t + s <= 30000
  a = d / s
  puts a
  if a <= t
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end