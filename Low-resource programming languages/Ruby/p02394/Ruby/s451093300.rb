n = gets.split()
w,h,x,y,r = n[0].to_i,n[1].to_i,n[2].to_i,n[3].to_i,n[4].to_i
if w - x >= r  && r + x >= w && r + y >= h && h - y >= r
	puts "Yes"
else
	puts "No"
end