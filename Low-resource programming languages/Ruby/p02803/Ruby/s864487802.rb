def traverse(maze_map, wi, hi, w, h)
	distance = Array.new(h).map{Array.new(w, -1)}
	max_distance = 0
	distance[hi][wi] = 0
	queue = []
	queue.push([wi, hi])
	while (queue.length > 0)
		wci, hci = queue.shift
		if max_distance < distance[hci][wci]
			max_distance = distance[hci][wci]
		end
		if wci - 1 >= 0 and distance[hci][wci - 1] == -1 and maze_map[hci][wci - 1]
			distance[hci][wci - 1] = distance[hci][wci] + 1
			queue.push([wci - 1, hci])
		end
		if hci - 1 >= 0 and distance[hci - 1][wci] == -1 and maze_map[hci - 1][wci]
			distance[hci - 1][wci] = distance[hci][wci] + 1
			queue.push([wci, hci - 1])
		end
		if wci + 1 < w and distance[hci][wci + 1] == -1 and maze_map[hci][wci + 1]
			distance[hci][wci + 1] = distance[hci][wci] + 1
			queue.push([wci + 1, hci])
		end
		if hci + 1 < h and distance[hci + 1][wci] == -1 and maze_map[hci + 1][wci]
			distance[hci + 1][wci] = distance[hci][wci] + 1
			queue.push([wci, hci + 1])
		end
	end
	max_distance
end

def function(w, h, maze_map)
	max_distance = 0
	maze_map.each_with_index do |array, hi|
		array.each_with_index do |c, wi|
			distance = traverse(maze_map, wi, hi, w, h)
			max_distance = (distance > max_distance) ? distance : max_distance
		end
	end
	max_distance
end

h, w = gets.chomp.split(' ').map(&:to_i)
maze_map = Array.new(h).map{ Array.new(w, false) }
(0...h).each do |i|
	maze_map[i] = gets.chomp.split('').map { |c| c == "." }
end
puts function(w, h, maze_map)
