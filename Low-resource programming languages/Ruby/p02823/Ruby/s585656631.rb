n, a, b = gets.split.map &:to_i

if (b - a) % 2 == 1 then
	puts [b - 1, a - 1, n - a, n - b].min + 1 + (b - a - 1) / 2
else
	puts (b - a) / 2
end
