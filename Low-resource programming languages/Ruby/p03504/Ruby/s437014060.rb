hw = STDIN.gets
hw = hw.chomp
h = hw.split(" ")
N = h[0].to_i
C = h[1].to_i
r = 0
h = 0
u = 0
f = Array.new(N).map{Array.new(3, 0)}
fs = Array.new(N).map{Array.new(3, 0)}
p = Array.new(C).map{Array.new(10 ** 5 + 1, 0)}
#ps = Array.new(, Array.new(, 0))
#e = Array.new(10, 0)
for i in 0..(N - 1)
  	s = ""
	s = STDIN.gets
	s.chomp!
	fs[i] = s.split(" ")
  	f[i] = fs[i].map{|a|a.to_i}
end

#puts f.join(' ')
#puts C.class
#puts C
#puts p[1][6].class
#puts f[1][2].class

for n in 0..(N - 1)
  	u = f[n][2]
	for i in (f[n][0] - 1)..(f[n][1] - 1)
		p[u - 1][i] = 1
      	#puts p[u][i]
	end
end
#puts p[1].join(' ')
for t in 0..(10 ** 5)
	h = 0
	for c in 0..(C - 1)
		h = h + p[c][t]
	end
	if r < h
		r = h
		ti = t
	end
end
#puts ti
puts r