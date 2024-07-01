n, l = gets.split.map &:to_i

if l >= 0 then
	puts (2 + n) * (n - 1) / 2 + l * (n - 1) - (n - 1)
elsif l <= -n then
	puts n * (n - 1) / 2 + l * (n - 1) - (n - 1)
else
	puts n * (n + 1) / 2 + l * n - n
end
