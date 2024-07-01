# coding: utf-8
# xより以下のインデックスを返す
def f(a, p, q, x)
  if p == q then
    return p
  end
  t = (p + q) / 2
  if a[t] == x then
    return t
  end
  if a[t] < x then
    return f(a, t+1, q, x)
  else
    return f(a, p, t-1, x)
  end
end

N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i).sort
# p A
a = A.sort
M.times do
  b, c = gets.chomp.split.map(&:to_i)
  if b < N then
    # ソートをしないようにするため適当な所にcをb個入れる。
    r = f(a, 0, N-1, c)
    if r <= b then
      (0..b-1).each do |i| 
        a[i] = c
      end
    else
      ((r-b)..r).each do |i|
        a[i] = c
      end
    end
  else
    (0..N-1).each do |i|
      a[i] = c
    end
  end
end
puts a.sum