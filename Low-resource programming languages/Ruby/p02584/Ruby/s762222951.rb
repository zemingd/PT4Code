x,k,d = gets.split.map &:to_i

if x >= 0 then
	div = x / d
	mod = x % d

	if k > div then
		if (k - div) % 2 == 1 then
			puts (x - div * d - d).abs
		else
			puts (x - div * d).abs
		end
	else
		puts x - k * d
	end
else
	div = x.abs / d
	mod = x.abs % d

	if k > div then
		if (k - div) % 2 == 1 then
			puts (x + div * d + d).abs
		else
			puts (x + div * d).abs
		end
	else
		puts x + k * d
	end
end

