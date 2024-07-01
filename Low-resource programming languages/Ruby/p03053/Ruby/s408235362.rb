H, W = gets.split(' ').map(&:to_i)

memo = Array.new(H){Array.new(W, -1)}
queue = Array.new
H.times do |i|
  line = gets.chomp
  line.split('').each_with_index do |cell, j|
    if cell == '#'
      memo[i][j] = 0
      queue.push([i,j])
    end
  end
end

maxval = 0
lrud = [[0, -1], [0, 1], [-1, 0], [1, 0]]
while !(queue.empty?)
  nowx, nowy = queue.shift
  lrud.each do |move|
    x, y = nowx + move[0], nowy + move[1]
    next if x < 0 || x >= H || y < 0 || y >= W
    if memo[x][y] == -1
      val = memo[nowx][nowy] + 1
      memo[x][y] = val
      maxval = val
      queue.push([x, y])
    end
  end
end

puts maxval