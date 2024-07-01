W,H,x,y,r = gets.chomp.split(" ").map(&:to_i)
puts (x+r)<W && (y+r)<H && (x-r)>0 && (y-r)>0 ? "Yes" "No"