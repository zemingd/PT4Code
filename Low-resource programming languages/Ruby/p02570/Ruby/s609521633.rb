d, t, s = gets.split(" ").map(&:to_i)

if d + t + s <= 30000 && d + t + s >= 1
  
  a = d / s

  if a <= t
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end
