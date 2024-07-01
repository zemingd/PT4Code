@n, @a, @b, @c = gets.chomp.split(" ").map(&:to_i)

@l = []
@n.times do
  @l << gets.chomp.to_i
end
INF = 10**9

def dfs(cur, a, b, c)
  if cur == @n
    if [a, b, c].min > 0
      return (a - @a).abs + (b - @b).abs + (c - @c).abs - 30
    else
      return INF
    end
  end
  ret0 = dfs(cur + 1, a, b, c) + 10
  ret1 = dfs(cur + 1, a + @l[cur], b, c) + 10
  ret2 = dfs(cur + 1, a , b + @l[cur], c) + 10
  ret3 = dfs(cur + 1, a, b, c + @l[cur]) + 10
  return [ret0, ret1, ret2, ret3].min
end

puts dfs(0, 0, 0, 0)