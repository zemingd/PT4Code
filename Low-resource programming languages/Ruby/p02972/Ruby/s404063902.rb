N = gets.to_i
as = gets.split " "

bs = Array.new(N, 0)

i = N
while (i > 0)
	i -= 1
	if (as[i] == "1")
		j = i
		sum = 0
		while (j < N)
			sum += bs[j].to_i
			j += (i + 1)
		end
		bs[i] = 1 - (sum % 2)
	end
end

ans = []
(0...N).each do |i|
	ans << (i + 1) if (bs[i] == 1)
end

puts ans.size
puts ans.join " "
