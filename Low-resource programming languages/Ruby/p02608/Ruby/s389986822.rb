N = STDIN.gets.chomp.to_i

def a(n)
	ct = 0
	b = Math.sqrt(n).to_i
	(1..b).each do |x|
		(1..b).each do |y|
			xy = x * x + y * y
			break if xy >= n
			(1..b).each do |z|
				if xy + z * z + x * y + y * z + z * x == n
					ct += 1
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
