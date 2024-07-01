a,b,c = gets.split(" ").map{|v|
	v.to_i
}

s = a+b+c

mid = s / 2.0
if (a == mid) or (b == mid ) or (c == mid) then
	puts "Yes"
else
	puts "No"
end