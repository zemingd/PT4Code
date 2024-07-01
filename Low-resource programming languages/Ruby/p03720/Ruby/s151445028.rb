N, M = gets.split.map(&:to_i)

ans = Array.new(N, 0)

M.times{
  a, b = gets.split.map(&:to_i)
  a -= 1
  b -= 1
  ans[a] += 1
  ans[b] += 1
}

puts ans