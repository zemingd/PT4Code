W,H,x,y,r = gets.split.map(&:to_i)

if x <= W-r && x-r >=0 && y <= H-r && y-r >=0

puts "Yes"

else x-r < 0 || x+r > W && y-r < 0 || y+r > W
 puts "No"
end
