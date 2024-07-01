INF = 10**9
N, A, B, C = gets.split.map(&:to_i)
L = []
N.times do |i|
  L[i] = gets.to_i
end

"自分で思いつかなかったのでeditorialのパクり"
def dfs(i, a, b, c)
  pa, pb, pc = 0, 0, 0
  if i==N
    return (a-A).abs + (b-B).abs + (c-C).abs - 30 if [a,b,c].min > 0
    # a,b,cに1つでも0があれば指定のサイズで作れないのでINFにしておく
    return INF if [a,b,c].min <= 0
  end
  p0 = dfs(i+1, a, b, c)
  pa = dfs(i+1, a+L[i], b, c) + 10
  pb = dfs(i+1, a, b+L[i], c) + 10
  pc = dfs(i+1, a, b, c+L[i]) + 10
  return [p0, pa, pb, pc].min
end

puts dfs(0, 0, 0, 0)