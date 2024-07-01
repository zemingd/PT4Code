H, W = gets.split(' ').map(&:to_i)

memo = Array.new(H){Array.new(W, -1)}
queue = Array.new
H.times do |i|
  line = gets.chomp
  line.size.times do |j|
    if line[j] == '#'
      memo[i][j] = 0
      queue.push([i,j])
    end
  end
end

maxval = 0
lrud = [[0, -1], [0, 1], [-1, 0], [1, 0]]
while !(queue.empty?)
  now = queue.shift
  lrud.each do |move|
    x, y = now[0] + move[0], now[1] + move[1]
    next if x < 0 || x >= H || y < 0 || y >= W
    if memo[x][y] == -1
      val = memo[now[0]][now[1]] + 1
      memo[x][y] = val
      maxval = val
      queue.push([x, y])
    end
  end
end

puts maxval