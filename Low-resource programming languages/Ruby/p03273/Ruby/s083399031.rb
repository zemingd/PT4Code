def get_transpose (a_grid, h, w)
	b_grid = Array.new(w){Array.new(h)}
	
	for i in 0..h-1
			for j in 0..w-1
				b_grid[j][i] = a_grid[i][j] 
			end
	end
	
	return b_grid
end

def get_lines_to_erase(a_grid)
	lines_to_erase = Array.new
	
	a_grid.each_with_index do |line, index|
		erase = 1
		line.each do |cell|
			if cell == '#'
				erase = 0
			end
		end 
		if erase == 1
			lines_to_erase.push(index)
		end 
	end
	
	return lines_to_erase
end

h, w = gets.split.map(&:to_i) 

grid = Array.new
line = Array.new

for i in 0..h-1 
		line = gets.chars.to_a
		grid.push(line)
end
	

trans_grid = get_transpose(grid, h, w)

lines = get_lines_to_erase(grid)
columns = get_lines_to_erase(trans_grid)


grid.each_with_index do |line, index_r|
	if !lines.include?(index_r)
			string = ""
			line.each_with_index do |cell, index_c|
				if !columns.include?(index_c)
					string += cell
				end
			end
			puts string
	end
end

