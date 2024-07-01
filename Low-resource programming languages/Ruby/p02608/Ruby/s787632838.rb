N = STDIN.gets.chomp.to_i

def g(x, y, z)
	if x == 1
		return 1 + (y + z) + y * y + z * z + y * z
	else
		return g(x-1) + 2 * x + y + z - 1
	end
end

def a(n)
	ct = 0
	k = 0
	xb = Math.sqrt(n/6).to_i
	b = Math.sqrt(n).to_i
	(1..xb).each do |x|
		(x..b).each do |y|
			xy = x * x + y * y + x * y
			break if xy >= n
			(y..b).each do |z|
				c = xy + z * z + y * z + z * x
				if c == n
					if x == y && y == z
						ct += 1
					elsif x == y || y == z || z == x
						ct += 3
					else
						ct += 6
					end
					break
				elsif c > n
					break
				end
			end
		end
	end
	return ct
end

(1..N).each do |n|
	puts a(n)
end
		