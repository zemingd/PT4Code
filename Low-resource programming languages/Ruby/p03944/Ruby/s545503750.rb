w,h,n = gets.split(" ").map{|v|
	v.to_i
}

xs = 0
xe = w
ys = 0
ye = h

n.times{
	x, y, a = gets.split(" ").map{|v|
		v.to_i
	}
	if (a == 1) then
		xs = x
	elsif (a == 2) then
		xe = x
	elsif (a == 3) then 
		ys = y
	elsif (a == 4) then
		ye = y
	end
}

if (xe-xs <= 0) then
	puts "0"
	exit
end
if (ye-ys <= 0) then
	puts "0"
	exit
end

puts (xe-xs)*(ye-ys)
