N,A,B,C = gets.split.map(&:to_i)
L = Array.new(N)
N.times {|i|  L[i] = gets.to_i}
INF = 10 ** 9

def dfs(cur, a,b,c)
  if cur == N
    return [a,b,c].min > 0  ? (a-A).abs + (b-B).abs + (c-C).abs - 30 : INF
  end
  ret0 = dfs(cur + 1, a, b, c)
  ret1 = dfs(cur + 1, a + L[cur], b, c) + 10
  ret2 = dfs(cur + 1, a, b + L[cur], c) + 10
  ret3 = dfs(cur + 1, a, b, c + L[cur]) + 10
  [ret0, ret1, ret2, ret3].min
end

puts dfs(0,0,0,0)