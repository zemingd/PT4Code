l = []
r = []
n, m = gets.strip.split.map(&:to_i)

m.times do |i|
	x, y =  gets.strip.split.map(&:to_i)
	l << x
	r << y
end

lmax = l.max
rmin = r.min

ans = rmin - lmax + 1
if ans < 0
	ans = 0
end
puts ans