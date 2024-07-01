H, W = gets.chomp.split(' ').map(&:to_i)
$maze = readlines.map { |l| l.chomp.split('').push('#') }.push(Array.new(W + 1) {'#'})

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
    next if $maze[i][j] == '#'
    $queue = []
    $scores = Array.new(H + 1) { Array.new(W + 1) {-1} }
    bfs(i, j, 0)
    score = $scores.inject(0) do |m, s|
      [m, s.max].max
    end
    max = [max, score].max
  end
end

puts max
