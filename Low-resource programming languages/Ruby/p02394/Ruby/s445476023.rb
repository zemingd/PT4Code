W,H,x,y,r = gets.split.map(&:to_i)
if x-r >= 0 && x+r <= W
  if y-r >=0 && y+r <= H
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end
