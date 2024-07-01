$w,$h,$n = gets.chomp.map{|i| i.to_i}
x = []
y = []
z = []
n.times do |i|
	p,q,r = gets.chomp.map{|i| i.to_i}
	x << p
	y << q
	z << r
end

$rect = Array.new(h,1).map{|i| i = Array.new(w,1)}#[h][w]

def draw(nw,nh,na)
	rx = 0..($w)
	ry = 0..($h)
	case a then
		when 1 then
			rx = 0..(nw-1)
		when 2 then
			rx = nw..($w-1)
		when 3 then
			ry = 0..(nh-1)
		when 4 then
			ry = nh..($h-1)
		else
	end
	rx.each do |x|
		ry.each do |y|
			$rect[y][x] = 0
		end
	end
end

n.times do |i|
	draw(x[i],y[i],a[i])
end

res = 0
$rect.each do |i|
	res+=i.inject{|sum,i|sum+=i}
end

puts res