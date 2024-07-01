$h, $w = gets.chomp.split(" ").map(&:to_i)
maze = []
$h.times do 
	maze.push(gets.chomp.split("").map{|a| a == "#" ? -1 : 0})
end

# y, x, depthをまとめて
$queue = []
def solve(arr, y, x, depth)
	return 0 if arr[y][x] == -1
	return depth if arr[y][x] == 1
	arr[y][x] = 1
	ngo = [depth]
	ngo << solve(arr, y - 1, x, depth + 1) if y - 1 >= 0
	ngo << solve(arr, y + 1, x, depth + 1) if y + 1 < $h
	ngo << solve(arr, y, x - 1, depth + 1) if x - 1 >= 0
	ngo << solve(arr, y, x + 1, depth + 1) if x + 1 < $w
	return ngo.max
end 

def wfs(arr, y, x, depth)
	# return depth - 1 if arr[y][x] == -1
	# return depth if arr[y][x] == 1
	#puts "depth:#{depth} y:#{y} x:#{x}"
	arr[y][x] = 1
	$queue.push([y - 1, x, depth + 1]) if y - 1 >= 0 && arr[y - 1][x] == 0
	$queue.push([y + 1, x, depth + 1]) if y + 1 < $h && arr[y + 1][x] == 0
	$queue.push([y, x - 1, depth + 1]) if x - 1 >= 0 && arr[y][x - 1] == 0
	$queue.push([y, x + 1, depth + 1]) if x + 1 < $w && arr[y][x + 1] == 0
	return depth
end


max = -1
mapbin = Marshal.dump(maze)
$h.times do |i|
	$w.times do |j|
		ngomap = Marshal.load(mapbin)
		$queue.push([i,j,0])
		while $queue.length > 0
			q = $queue.shift
			max = q[2] if max < q[2]
			wfs(ngomap, q[0], q[1], q[2])
		end
	end
end


puts max



