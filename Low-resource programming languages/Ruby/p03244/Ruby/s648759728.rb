n = gets.to_i
v = gets.split.map(&:to_i)
V = []

if v.uniq.size == 1
	puts n/2
	exit
end

(n-1).times do |i|
	V << v[i]-v[i+1]
end

count = 0
(V.size-1).times do |i|
	if V[i].abs != V[i+1].abs
		count += 1
	end
end

puts count