h,w = gets.split.map(&:to_i)

max_cell = h*w
cell = 0
map = h.times.map{[]}
queue = []


h.times do |y|
  s = gets.chomp
  w.times do |x|
    if s[x] == "#"
      queue << [x,y]
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
      new_queue << [x-1, y] if x > 0 && !map[y][x-1]
      new_queue << [x+1, y] if x < w-1 && !map[y][x+1]
      new_queue << [x, y-1] if y > 0 && !map[y-1][x]
      new_queue << [x, y+1] if y < h-1 && !map[y+1][x]
    end
  end
  queue = new_queue
  n += 1
end

puts n-1
