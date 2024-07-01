f = gets.to_i
k = Array.new(4){ Array.new(3){ Array.new(10, 0) } }
for i in 0..f-1 do
	l, m, n, o = gets.split.map(&:to_i)
	k[l-1][m-1][n-1] = o
end
for i in 0..3 do
	for j in 0..2 do
		puts k[i][j].join(" ")
	end
	puts "####################" unless i == 3
end