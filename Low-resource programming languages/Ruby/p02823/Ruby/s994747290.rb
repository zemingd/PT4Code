n, a, b = gets.split.map &:to_i

if (b - a) % 2 == 1 then
	puts [b - 1, n-a].min
else
	puts (b - a) / 2
end
