h, w = gets.split.map(&:to_i)
s = Array.new(h + 2){Array.new(w + 2, 0)}
que = []
h.times do |i|
  gets.each_char.with_index do |c, j|
    if c == '.'
      s[i][j + 1] = -1
    elsif c == '#'
      que.push([i, j + 1])
    end
  end
end
ans = 0
while que.size > 0 do
  i, j = que.shift
  ans = s[i][j]
  if s[i + 1][j] == -1
    s[i + 1][j] = ans + 1
    que.push([i + 1, j])
  end
  if s[i - 1][j] == -1
    s[i - 1][j] = ans + 1
    que.push([i - 1, j])
  end
  if s[i][j + 1] == -1
    s[i][j + 1] = ans + 1
    que.push([i, j + 1])
  end
  if s[i][j - 1] == -1
    s[i][j - 1] = ans + 1
    que.push([i, j - 1])
  end
end
puts ans