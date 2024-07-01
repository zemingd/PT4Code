n = gets.to_i
v = gets.split.map(&:to_i)
e = []
o = []
a = 0
V = []

if v.count(v[0]) == v.size
	puts n/2
	exit
end

(n-1).times do |i|
	V << v[i].to_i - v[i+1].to_i
end
count = 0
(V.size-1).times do |i|
	if V[i] + V[i+1] + a != 0
		count += 1
		a = V[i] + V[i+1]
	end

end

p count 