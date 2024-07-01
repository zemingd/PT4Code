N, A, B, C = gets.chomp.split.map(&:to_i)
L = N.times.map { gets.chomp.to_i }

def rec(i, a, b, c)
  if i == N
    return [a, b, c].min > 0 ? (A-a).abs + (B-b).abs + (C-c).abs : 100000
  end
  puts L[i]

  x = rec(i+1, a, b, c)
  y = rec(i+1, a+L[i], b, c) + (a.zero? ? 0 : 10)
  z = rec(i+1, a, b+L[i], c) + (b.zero? ? 0 : 10)
  w = rec(i+1, a, b, c+L[i]) + (c.zero? ? 0 : 10)

  return [x, y, z, w].min
end

puts rec(0, 0, 0, 0)
