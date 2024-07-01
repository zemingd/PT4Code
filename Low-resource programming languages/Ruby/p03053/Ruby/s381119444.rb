r, c = gets.split.map(&:to_i)

maze = []
queue = []
(0..r-1).each do |rr|
  line = gets.chomp
  line.each_char.each_with_index { |c, cc|
    queue << [rr, cc] if c == '#'
  }
  maze << line.split('').map{ |e| e=='#'? 0 : nil }
end

nxy = [[0, 1], [1, 0], [0, -1], [-1, 0]]

while q = queue.shift
  cnt = maze[q[0]][q[1]].to_i + 1
  nxy.each do |xy|
    ap_x = q[0] + xy[0]
    ap_y = q[1] + xy[1]
    next if ap_x < 0 || ap_x >= r || ap_y < 0 || ap_y >= c
    next unless maze[ap_x][ap_y].nil?
    maze[ap_x][ap_y] = cnt
    queue << [ap_x, ap_y]
  end
end

p maze.flatten.max
