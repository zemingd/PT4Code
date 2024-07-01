N, A, B, C = gets.split.map(&:to_i)
INF = 10 ** 9

L = []
N.times do
  l = gets.to_i
  L << l
end

def dfs(n, a, b, c)
  if N == n
    if [a, b, c].min > 0
      return (A - a).abs + (B - b).abs + (C - c).abs - 30
    else
      return INF
    end
  end

  mp0 = dfs(n + 1, a, b, c)
  mp1 = dfs(n + 1, a + L[n], b, c) + 10
  mp2 = dfs(n + 1, a, b + L[n], c) + 10
  mp3 = dfs(n + 1, a, b, c + L[n]) + 10

  return [mp0, mp1, mp2, mp3].min
end


puts dfs(0, 0, 0, 0)
