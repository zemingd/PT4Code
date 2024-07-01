H, W = gets.split.map( &:to_i )
Board = Array.new( H ) do
	gets.strip
end

def painted( y, x )
	if !( 0 <= y && y < H && 0 <= x && x < W ) then
		return false
	end

	return Board[y][x] == '#'
end

dy = [ 0, 1, 0, -1 ]
dx = [ 1, 0, -1, 0 ]

H.times do |i|
	W.times do |j|
		if Board[i][j] == '.' then
			next
		end

		ok = false
		4.times do |d|
			ok = ok || painted( i + dy[d], j + dx[d] )
		end

		if !ok then
			puts "No"
			exit 0
		end
	end
end

puts "Yes"