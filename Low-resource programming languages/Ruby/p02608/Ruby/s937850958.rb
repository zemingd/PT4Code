N = STDIN.gets.chomp.to_i

def a(n)
	ct = 0
	k = 0
	b = Math.sqrt(n).to_i
	(1..b).each do |x|
		(x..b).each do |y|
			xy = x * x + y * y
			break if xy >= n
			(y..b).each do |z|
				c = xy + z * z + x * y + y * z + z * x
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
