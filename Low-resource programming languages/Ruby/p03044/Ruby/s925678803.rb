n = gets().to_i

uvw = []
(n - 1).times {|i|
	u, v, w = gets().split(' ').map(&:to_i)
	uvw.push([u, v, (w & 0x1 == 0), false])
}

color = Array.new(n + 1)
color[uvw[0][0]] = 0

cnt = 0
j = 0
while cnt < uvw.length
	uj = uvw[j][0]
	vj = uvw[j][1]
	wj = uvw[j][2]

	if !uvw[j][3]

		if color[vj] == nil && color[uj]
			color[vj] = (wj ? color[uj] : 1 - color[uj])
			uvw[j][3] = true
			cnt += 1
		elsif color[uj] == nil && color[vj]
			color[uj] = (wj ? color[vj] : 1 - color[vj])
			uvw[j][3] = true
			cnt += 1
		end

	end

	j += 1
	j = 0 if j >= uvw.length
end

(1 ... color.length).each {|j|
	puts color[j]
}
