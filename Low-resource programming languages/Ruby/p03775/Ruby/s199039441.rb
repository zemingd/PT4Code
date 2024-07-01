N = gets.to_i
n = Math.sqrt(N).ceil;

while n <= N do
	if (N % n == 0)
		print i.to_s.size, "\n"
		break
	end
	n += 1
end
