INF = Float::INFINITY

def dfs(a, b, c, k)
  
  if k == N
    return [a, b, c].min == 0 ? INF : (A-a).abs + (B-b).abs + (C-c).abs - 10 * 3
  end
  
  x = dfs(a+L[k], b, c, k+1) + 10
  y = dfs(a, b+L[k], c, k+1) + 10
  z = dfs(a, b, c+L[k], k+1) + 10
  w = dfs(a, b, c, k+1)
  
  [x, y, z, w].min
end
 
N, A, B, C = gets.split.map{|t|t.to_i}
L = Array.new(N){ gets.to_i }
 
puts dfs(0, 0, 0, 0)