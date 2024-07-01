require 'pp'

N,A,B,C = readline.chomp.split.map(&:to_i)

L = Array.new(N)
N.times {|i| L[i] = readline.chomp.to_i }

INF = 100000000

def dfs(cur, a, b, c)
  if cur == N
    if a>0 and b>0 and c>0
      return (a-A).abs+(b-B).abs+(c-C).abs-30
    else
      return INF
    end
  end

  ret0 = dfs(cur+1, a, b, c)
  ret1 = dfs(cur+1, a+L[cur], b, c)+10
  ret2 = dfs(cur+1, a, b+L[cur], c)+10
  ret3 = dfs(cur+1, a, b, c+L[cur])+10
  [ret0,ret1,ret2,ret3].min
end

puts dfs(0,0,0,0)
