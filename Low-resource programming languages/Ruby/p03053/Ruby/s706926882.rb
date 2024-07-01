h, w = gets.split.map(&:to_i)
cm = Array.new(h + 2){Array.new(w + 2, 0)}
que = []
1.upto(h) do |i|
  s = gets.chomp
  1.upto(w) do |j|
    if s[j - 1] == '.'
      cm[i][j] = -1
    else
      que.push(i)
      que.push(j)
      cm[i][j] = 0
    end
  end
end
ans = 0
while que.size > 0
  y = que.shift
  x = que.shift
  ans = cm[y][x] + 1
  if cm[y + 1][x] == -1
    cm[y + 1][x] = ans
    que.push(y + 1)
    que.push(x)
  end
  if cm[y - 1][x] == -1
    cm[y - 1][x] = ans
    que.push(y - 1)
    que.push(x)
  end
  if cm[y][x + 1] == -1
    cm[y][x + 1] = ans
    que.push(y)
    que.push(x + 1)
  end
  if cm[y][x - 1] == -1
    cm[y][x - 1] = ans
    que.push(y)
    que.push(x - 1)
  end
end
puts ans - 1