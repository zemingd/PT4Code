N, A, B, C = gets.split.map(&:to_i)
 
list = []
N.times { list << gets.to_i }
 
def dfs(i, a, b, c)
  return [a, b, c].min > 0 ? (A - a).abs + (B - b).abs + (C - c).abs -30 : 1E9 if i == N
  i, l = i + 1, list[i]
  [dfs(i, a, b, c), dfs(i, a+l, b, c) - 10, dfs(i, a, b+l, c) - 10, dfs(i, a, b, c+l) - 10].min
end
 
puts dfs(0, 0, 0, 0)