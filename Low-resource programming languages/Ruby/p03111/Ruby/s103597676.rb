N, A, B, C = gets.split.map(&:to_i)
@ls = []
N.times do
  @ls << gets.to_i
end

def dfs(cur, a, b, c)
  if cur == N
    if [a,b,c].min > 0
      return (a - A).abs + (b - B).abs + (c - C).abs - 30
    else
      return 10 ** 20
    end
  end

  ret0 = dfs(cur+1, a, b, c)
  ret1 = dfs(cur+1, a + @ls[cur], b, c) + 10
  ret2 = dfs(cur+1, a, b + @ls[cur], c) + 10
  ret3 = dfs(cur+1, a, b, c + @ls[cur]) + 10
  return [ret0, ret1, ret2, ret3].min
end

puts dfs(0, 0, 0, 0)

