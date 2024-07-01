w,h,x,y,r = gets.split(' ').collect{|n|n.to_i}
if x+r < w && y+r<h
 puts ("Yes")
else
 puts ("No")
end