N, *ABC = gets.split.map(&:to_i)
LS = N.times.map{ gets.to_i }
INF = 10**9

def dfs(cur, *abc)
  if cur == N
    return abc.min > 0 ? 3.times.inject(0){|s, i| s + (abc[i]-ABC[i]).abs } - 30 : INF
  end
  r1 = dfs(cur+1, abc[0], abc[1], abc[2])
  r2 = dfs(cur+1, abc[0] + LS[cur], abc[1], abc[2]) + 10
  r3 = dfs(cur+1, abc[0], abc[1] + LS[cur], abc[2]) + 10
  r4 = dfs(cur+1, abc[0], abc[1], abc[2] + LS[cur]) + 10
  return [r1, r2, r3, r4].min
end


puts dfs(0, 0, 0, 0)

