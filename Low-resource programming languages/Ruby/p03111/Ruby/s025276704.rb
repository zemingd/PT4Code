def dfs(a, b, c, k, h)
  
  if k == N
    
    return nil if h[0] == 0 or h[1] == 0 or h[2] == 0
    ret = 0
    ret += 10 * (h[0] - 1)
    ret += 10 * (h[1] - 1)
    ret += 10 * (h[2] - 1)
  
    return ret + a.abs + b.abs + c.abs
  end
  
  h[0] += 1
  x = dfs(a-L[k], b, c, k+1, h)
  h[0] -= 1
  h[1] += 1
  y = dfs(a, b-L[k], c, k+1, h)
  h[1] -= 1
  h[2] += 1
  z = dfs(a, b, c-L[k], k+1, h)
  h[2] -= 1
  w = dfs(a, b, c, k+1, h)
  
  [x, y, z, w].compact.min
end

N, A, B, C = gets.split.map(&:to_i)

L = Array.new(N)
N.times{ |i| L[i] = gets.to_i }

p dfs(A, B, C, 0, [0,0,0])
