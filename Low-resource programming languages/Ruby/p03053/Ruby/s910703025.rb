h,w = gets.split.map(&:to_i)
a = h.times.map do
  gets.chomp
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
      queue << [x-1, y] if x > 0
      queue << [x+1, y] if x < w-1
      queue << [x, y-1] if y > 0
      queue << [x, y+1] if y < h-1
    end
  end
end

n = 0

while true
  break if cell >= max_cell
  new_queue = []
  queue.each do |x,y|
    unless map[y][x]
      map[y][x] = true
      cell += 1
      new_queue << [x-1, y] if x > 0
      new_queue << [x+1, y] if x < w-1
      new_queue << [x, y-1] if y > 0
      new_queue << [x, y+1] if y < h-1
    end
  end
  queue = new_queue
  n += 1
end

puts n