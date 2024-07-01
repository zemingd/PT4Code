def max(a,b)
	if a >= b then
		return a
	else
		return b
	end
end

def min(a,b)
	if a <= b then
		return a
	else
		return b
	end
end

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
		xs = max(xs, x)
	elsif (a == 2) then
		xe = min(xe, x)
	elsif (a == 3) then 
		ys = max(ys, y)
	elsif (a == 4) then
		ye = min(ye, y)
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
