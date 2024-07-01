N = STDIN.gets.chomp.to_i

a = [0] * (N+1)

xb = Math.sqrt(N/6).to_i
b = Math.sqrt(N).to_i
(1..xb).each do |x|
	(x..b).each do |y|
		xy = x * x + y * y + x * y
		break if xy >= N
		(y..b).each do |z|
			c = xy + z * z + y * z + z * x
			if c <= N
				if x == y && y == z
					a[c] += 1
				elsif x == y || y == z || z == x
					a[c] += 3
				else
					a[c] += 6
				end
			elsif c > N
				break
			end
		end
	end
end

(1..N).each do |n|
	puts a[n]
end
	