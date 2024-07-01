INF = 10 ** 9

class NilClass
  def +(i)
    return nil
  end
end

def dfs(a, b, c, k)
  
  if k == N
    return nil if [a, b, c].min == 0
    return (A-a).abs + (B-b).abs + (C-c).abs - 10 * 3
  end
  
  x = dfs(a+L[k], b, c, k+1) + 10
  y = dfs(a, b+L[k], c, k+1) + 10
  z = dfs(a, b, c+L[k], k+1) + 10
  w = dfs(a, b, c, k+1)
  
  [x, y, z, w].compact.min
end

N, A, B, C = gets.split.map(&:to_i)

L = Array.new(N)
N.times{ |i| L[i] = gets.to_i }

p dfs(0, 0, 0, 0)
