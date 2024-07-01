w,h,x,y,r = gets.split.map(&:to_i)
x>0 && y+r <=h && x+r <=w && y>0 ? puts("Yes") : puts("No")
