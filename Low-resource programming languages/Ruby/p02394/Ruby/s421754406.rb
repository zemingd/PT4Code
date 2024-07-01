line = gets.chomp

w,h,x,y,r = line.split(/\s/).map(&:to_i)

if x + r <= w && y + r <= h
  # puts "No"
  if x + r >= 0 && y + r >= 0
    puts "Yes"
  else 
    puts "No"
  end

# elsif x + r > w && y + r > h
#   puts "No"
else 
  puts "No"
end