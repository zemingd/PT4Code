N, A, B, C = gets.split.map(&:to_i)
Ls = readlines.map(&:to_i)

def go(i, a, b, c)
  return [a, b, c].min > 0 ? (A - a).abs + (B - b).abs + (C - c).abs - 30 : 1E9 if i == N
  i, l = i + 1, Ls[i]
  [go(i, a + l, b, c) + 10, go(i, a, b + l, c) + 10, go(i, a, b, c + l) + 10, go(i, a, b, c)].min
end

puts go(0, 0, 0, 0)