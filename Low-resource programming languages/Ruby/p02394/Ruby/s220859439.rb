W,H,x,y,r = gets.split.map(&:to_i)
puts ((x+r<W && x-r>0)&&(y+r<H && y-r>0)) ? "Yes" : "No"