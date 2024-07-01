a, b = gets.split.map &:to_i

if b / a * a == b then
	puts b + a
else
	puts b - a
end