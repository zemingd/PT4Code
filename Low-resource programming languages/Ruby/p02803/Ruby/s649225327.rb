H, W = gets.chomp.split.map(&:to_i)
s = []
H.times do |i|
  s[i] = gets.chomp.split('')
end

ans = 0

def possible?(y, x, s)
  count = 0
  count += 1 if y != 0 && x != 0 && s[y-1][x-1] == '.'
  count += 1 if y != 0 && s[y-1][x] == '.'
  count += 1 if y != 0 && x != W-1 && s[y-1][x+1] == '.'
  count += 1 if y != H-1 && x != 0 && s[y+1][x-1] == '.'
  count += 1 if y != H-1 && s[y+1][x] == '.'
  count += 1 if y != H-1 && s[y+1][x] == '.'
  count += 1 if x != 0 && s[y][x-1] == '.'
  count += 1 if x != W-1 && s[y][x+1] == '.'
  if count != 0 && count < 4
    true
  else
    false
  end
end

H.times do |i|
  W.times do |t|
    next if s[i][t] == '#'
    next unless possible?(i, t, s)
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
      max = arrived.flatten.select{|e| e}.max
      if ans < max
        ans = max
      end
    end
  end
end

p ans
