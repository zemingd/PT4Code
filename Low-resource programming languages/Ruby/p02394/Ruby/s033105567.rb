w,h,x,y,r = gets.split(' ').collect{|n|n.to_i}
if (x+r < w) && (y+r < h) && (x-r > 0) && (y-r > 0)
 puts("Yes")
else
 puts("No")
end