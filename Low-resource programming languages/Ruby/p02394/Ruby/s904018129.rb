line = gets.chomp

w,h,x,y,r = line.split(/\s/).map(&:to_i)

if x + r >= w || y + r >= h
  puts "No"
else 
  puts "Yes"
end