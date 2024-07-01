N = gets.to_i
n = Math.sqrt(N).floor;

while n >= 1 do
	if (N % n == 0)
		print (N/n).to_s.size, "\n"
		break
	end
	n -= 1
end
