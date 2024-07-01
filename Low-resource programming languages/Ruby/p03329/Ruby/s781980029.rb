Bases=[59049, 46656, 7776, 6561, 1296, 729, 216, 81, 36, 9, 6]

N = ARGF.gets.to_i

DP = Array.new(N+1) do Array.new(Bases.size, -1) end
# for i in 0..restN
#   DP[i][0] = 0
# end

def dfs(restN, cur)
  return 0 if restN == 0
  return restN if cur >= Bases.size

  return DP[restN][cur] if DP[restN][cur] >= 0


  if restN >= Bases[cur]
    res = [dfs(restN - Bases[cur], cur)+1, dfs(restN - Bases[cur], cur+1)+1, dfs(restN, cur+1)].min
  else
    res = dfs(restN, cur+1)
  end

  DP[restN][cur] = res
  res
end

puts dfs(N, 0)
