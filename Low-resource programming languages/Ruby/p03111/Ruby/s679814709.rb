$N, $A, $B, $C = gets.split.map(&:to_i)
$l = []
$N.times do
  $l << gets.to_i
end
$INF = 10 ** 9


def dfs(cur, a, b, c)
  if cur == $N
    if [a, b, c].min > 0
      return (a - $A).abs + (b - $B).abs + (c - $C).abs - 30
    else
      return $INF
    end
  end

  ret0 = dfs(cur + 1, a, b, c)
  ret1 = dfs(cur + 1, a + $l[cur], b , c) + 10
  ret2 = dfs(cur + 1, a, b + $l[cur], c) + 10
  ret3 = dfs(cur + 1, a, b, c + $l[cur]) + 10

  [ret0, ret1, ret2, ret3].min
end

puts dfs(0, 0, 0, 0)