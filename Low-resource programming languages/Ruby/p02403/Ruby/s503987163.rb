h, w = gets.split.map(&:to_i)
while h != 0 || w != 0 do
	for a in 1..h do
		for b in 1..w do
			print "#"
		end
		puts
	end
h, w = gets.split.map(&:to_i)
puts
end