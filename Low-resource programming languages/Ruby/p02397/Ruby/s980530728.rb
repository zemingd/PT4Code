y = [[false]]
a = true
b = gets.chomp.split(" ").map(&:to_i)

while a
	begin
		a = y[b[0]][b[1]]
	rescue
		puts b.sort.join(" ")
		b = gets.chomp.split(" ").map(&:to_i)
	end
end