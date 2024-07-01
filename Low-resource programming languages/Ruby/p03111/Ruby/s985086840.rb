N, A, B, C = gets.split.map(&:to_i)
L          = N.times.map{ gets.to_i }

def dfs(cur, a, b, c)
  if cur == N
    if [a, b, c].min > 0
      return (a-A).abs + (b-B).abs + (c-C).abs - 30
    else
      return 10**9
    end
  end

  r0 = dfs(cur+1, a,        b,        c       )
  r1 = dfs(cur+1, a+L[cur], b,        c       ) + 10
  r2 = dfs(cur+1, a,        b+L[cur], c       ) + 10
  r3 = dfs(cur+1, a,        b,        c+L[cur]) + 10

  return [r0, r1, r2, r3].min
end

puts dfs(0, 0, 0, 0)