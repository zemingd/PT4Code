def max_distance(maze_map, wi, hi)
	w = maze_map.first.length
	h = maze_map.length
	distance = Array.new(h).map{Array.new(w, -1)}
	distance[hi][wi] = 0
	result = 0
	queue = []
	queue.push([hi, wi])
	while (!queue.empty?)
		temp_queue = []
		while(!queue.empty?) do
			hci, wci = queue.shift
			if result < distance[hci][wci]
				result = distance[hci][wci]
			end
			if wci > 0 and distance[hci][wci - 1] == -1 and maze_map[hci][wci - 1]
				distance[hci][wci - 1] = distance[hci][wci] + 1
				temp_queue.push([hci, wci - 1])
			end
			if hci > 0 and distance[hci - 1][wci] == -1 and maze_map[hci - 1][wci]
				distance[hci - 1][wci] = distance[hci][wci] + 1
				temp_queue.push([hci - 1, wci])
			end
			if wci < w - 1 and distance[hci][wci + 1] == -1 and maze_map[hci][wci + 1]
				distance[hci][wci + 1] = distance[hci][wci] + 1
				temp_queue.push([hci, wci + 1])
			end
			if hci < h - 1 and distance[hci + 1][wci] == -1 and maze_map[hci + 1][wci]
				distance[hci + 1][wci] = distance[hci][wci] + 1
				temp_queue.push([hci + 1, wci])
			end
		end
		temp_queue.each { |c| queue.push(c) }
	end
	result
end

def max_move_times(w, h, maze_map)
	result = 0
	(0...h).each do |hi|
		(0...w).each do |wi|
			distance = max_distance(maze_map, wi, hi)
			result = distance if distance > result
		end
	end
	result
end

h, w = gets.chomp.split(' ').map(&:to_i)
maze_map = Array.new(h, nil)
(0...h).each do |i|
	maze_map[i] = gets.chomp.split('').map { |c| c == "." }
end
puts max_move_times(w, h, maze_map)
