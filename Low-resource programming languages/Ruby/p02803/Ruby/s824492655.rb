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
      arrived[u] = Array.new(W, false)
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
      max = 0
      H.times do |hh|
        W.times do |ww|
          next if s[hh][ww] == '#'
          next if hh == i && ww == t
          next if !arrived[hh][ww]
          if max < arrived[hh][ww]
            max = arrived[hh][ww]
          end
        end
      end
      if ans < max
        ans = max
      end
    end
  end
end

p ans
