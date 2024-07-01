H, W = gets.chomp.split(' ').map(&:to_i)
p $maze = readlines.map { |l| l.chomp.split('').push('#').unshift('#') }.push(Array.new(W + 2) {'#'}).unshift(Array.new(W + 2) {'#'})


def bfs(i, j, score)
  $scores[i][j] = score
  [[1, 0], [0, 1], [-1, 0], [0, -1]].each do |d|
    if $maze[i + d[0]][j + d[1]] == '.' && $scores[i + d[0]][j + d[1]] < 0
      $queue.push([i + d[0], j + d[1], score + 1])
    end
  end
  if cell = $queue.shift
    bfs(*cell)
  else
    score
  end
end

max = 0
H.times do |i|
  W.times do |j|
    next if $maze[i+1][j+1] == '#'
    $queue = []
    $scores = Array.new(H + 2) { Array.new(W + 2) {-1} }
    score = bfs(i+1, j+1, 0)
    max = [max, score].max
  end
end

puts max
