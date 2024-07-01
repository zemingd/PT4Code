N, A, B, C = gets.split.map(&:to_i)
L = N.times.map{gets.to_i}

def dfs(n, a, b, c)
  if n == N then
    return 1e9 if [a, b, c].min == 0
    return (a - A).abs + (b - B).abs + (c - C).abs - 30
  end
  ret0 = dfs(n + 1, a, b, c)
  ret1 = dfs(n + 1, a + L[n], b, c) + 10
  ret2 = dfs(n + 1, a, b + L[n], c) + 10
  ret3 = dfs(n + 1, a, b, c + L[n]) + 10
  [ret0, ret1, ret2, ret3].min
end

puts dfs(0, 0, 0, 0)
