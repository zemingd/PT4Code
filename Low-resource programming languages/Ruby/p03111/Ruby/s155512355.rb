N, A, B, C = gets.chomp.split.map(&:to_i)
L_LIST = N.times.map { gets.to_i }
MAX = 10 << 60

def dfs(n, a, b, c)
  if n == N
    if [a, b, c].include?(0)
      return MAX
    else
      return (A - a).abs + (B - b).abs + (C - c).abs - 10 * 3
    end
  end
  l = L_LIST[n]
  ret1 = dfs(n + 1, a, b, c)
  ret2 = dfs(n + 1, a + l, b, c) + 10
  ret3 = dfs(n + 1, a, b + l, c) + 10
  ret4 = dfs(n + 1, a, b, c + l) + 10
  [ret1, ret2, ret3, ret4].min
end

ans = dfs(0, 0, 0, 0)
puts ans
