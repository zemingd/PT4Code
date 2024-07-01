h,w = gets.split.map(&:to_i)
a = h.times.map do
  gets.chomp.chars
end

max_cell = h*w
cell = 0
map = h.times.map{[false]*w}
queue = []

(0...h).each do |y| 
  (0...w).each do |x|
    if a[y][x] == "#"
      cell += 1
      map[y][x] = true
      queue << [x-1, y]
      queue << [x+1, y]
      queue << [x, y-1]
      queue << [x, y+1]
    end
  end
end

n = 0

while true
  break if cell >= max_cell
  new_queue = []
  queue.each do |x,y|
    next if x < 0 || x >= w || y < 0 || y >= h
    unless map[y][x]
      map[y][x] = true
      cell += 1
      new_queue << [x-1, y]
      new_queue << [x+1, y]
      new_queue << [x, y-1]
      new_queue << [x, y+1]
    end
  end
  queue = new_queue
  n += 1
end

puts n