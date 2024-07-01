H, W = gets.split(' ').map(&:to_i)

grid = Array.new(H){Array.new}
memo = Hash.new(-1)
queue = Array.new
H.times do |i|
  line = gets.chomp
  line.size.times do |j|
    if line[j] == '#'
      memo[[i, j]] = 0
      queue.push([i,j])
    end
  end
end

maxval = 0
lrud = [[0, -1], [0, 1], [-1, 0], [1, 0]]
while !(queue.empty?)
  now = queue.shift
  lrud.each do |move|
    nxt = [now[0] + move[0], now[1] + move[1]]
    next if nxt[0] < 0 || nxt[0] >= H || nxt[1] < 0 || nxt[1] >= W
    if memo[nxt] == -1
      memo[nxt] = memo[now] + 1
      maxval = [maxval, memo[nxt]].max
      queue.push(nxt)
    end
  end
end

puts maxval