w,h,x,y,r=gets.split.map(&:to_i)
puts (r<=x && r<=y && x<=w-r && y<=h-r)? "yes" : "no"
