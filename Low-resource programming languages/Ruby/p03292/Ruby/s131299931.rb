def executor(v1, v2, v3)
	c = 0
	c += (v2 - v1).abs
	c += (v3 - v2).abs
	c
end

(a1, a2, a3) = gets.split.map(&:to_i)

min = [executor(a1, a2, a3), executor(a1, a3, a2), executor(a2, a1, a3), executor(a2, a3, a1), executor(a3, a1, a2), executor(a3, a2, a1)].min
p min


