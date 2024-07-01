require 'matrix'
class Matrix
  # v2.3 では代入不可
  def []=(i, j, x)
    @rows[i][j]=x
  end
end
h, w = gets.split.map(&:to_i)
cm = Matrix.build(h + 2, w + 2){0}
que = []
a = []
1.upto(h) do |i|
  s = gets.chomp
  1.upto(w) do |j|
    if s[j - 1] == '.'
      cm[i, j] = -1
      a << [i, j]
    end
  end
end
ans = 0
a.each do |b|
  dm = Marshal.load(Marshal.dump(cm))
  que.push(b[0], b[1], 0)
  dm[b[0], b[1]] = 0
  while que.size > 0
    y = que.shift
    x = que.shift
    r = que.shift
    ans = r + 1 if ans < r + 1
    if dm[y + 1, x] == -1
      dm[y + 1, x] = r + 1
      que.push(y + 1, x, r + 1)
    end
    if dm[y - 1, x] == -1
      dm[y - 1, x] = r + 1
      que.push(y - 1, x, r + 1)
    end
    if dm[y, x - 1] == -1
      dm[y, x - 1] = r + 1
      que.push(y, x - 1, r + 1)
    end
    if dm[y, x + 1] == -1
      dm[y, x + 1] = r + 1
      que.push(y, x + 1, r + 1)
    end
  end
end
puts ans - 1