h, w = gets.chomp.split.map(&:to_i)
queue = []

ll = []

h.times do |i|
  row = gets.chomp.chars
  ll << row

  row.each_with_index do |val, idx|
    queue << [i,idx, 0] if val == '#'
  end
end

visited = Array.new(h).map{Array.new(w, false)}


until queue.empty?
  x, y, cnt = queue.shift
  visited[x][y] = true

  [[-1,0],[1,0],[0,1], [0,-1]].each do |dx, dy|
    next if x + dx >= h || x + dx < 0 || y + dy >= w || y + dy < 0
    next if visited[x + dx][y + dy]

    queue << [x + dx, y + dy, cnt + 1]
  end

end

puts cnt
