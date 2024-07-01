w,h,x,y,r = gets.split(' ').map(&:to_i)
w = w - 2r
h = h - 2r
x = x - r
y = y - r

if w > x && h > y then puts "Yes" 
else puts "No"