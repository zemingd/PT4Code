N, A, B, C = gets.split.map(&:to_i)
l = n.times.map { gets.to_i }

def rec(i, a, b, c)
  if i == N
    return [a, b, c].min > 0 ? (A-a).abs + (B-b).abs + (C-c).abs : 100000
  end

  x = rec(i+1, a, b, c)
  y = rec(i+1, a+l[i], b, c) + (a.zero? ? 0 : 10)
  z = rec(i+1, a, b+l[i], c) + (b.zero? ? 0 : 10)
  w = rec(i+1, a, b, c+l[i]) + (c.zero? ? 0 : 10)

  return [x, y, x, w].min
end

puts rec(0, 0, 0, 0)