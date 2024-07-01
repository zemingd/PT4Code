H, W = gets.chomp.split.map(&:to_i)
s = []
H.times do |i|
  s[i] = gets.chomp.split('')
end

ans = 0

H.times do |i|
  W.times do |t|
    next if s[i][t] == '#'
    H.times do |gy|
      W.times do |gx|
        next if i == gy && t == gx
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
          if y == gy && x == gx
            if ans < index
              ans = index
            end
            break
          end
          arrived[y][x] = index
          index += 1
          queue.push([y+1, x, index], [y, x+1, index], [y-1, x, index], [y, x-1, index])
        end
      end
    end
  end
end

p ans
