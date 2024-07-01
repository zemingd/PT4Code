H, W = gets.chomp.split.map(&:to_i)
s = []
H.times do |i|
  s[i] = gets.chomp.split('')
end

ans = 0

H.times do |i|
  W.times do |t|
    next if s[i][t] == '#'
    arrived = []
    H.times do |u|
      arrived[u] = Array.new(W, nil)
    end
    queue = [[i, t, 0]]
    while !queue.empty?
      y, x, index = queue.shift
      next if y < 0 || x < 0 || y >= H || x >= W
      next if s[y][x] == '#'
      next if arrived[y][x]
      arrived[y][x] = index
      index += 1
      queue.push([y+1, x, index], [y, x+1, index], [y-1, x, index], [y, x-1, index])
    end
    max = arrived.flatten.compact.max
    ans = [ans, max].max
  end
end

p ans
