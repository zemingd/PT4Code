$n, $k = gets.split.map(&:to_i)
$v = gets.split.map(&:to_i)
Inf = 1_000_000_000_000
def dfs(a, v, count)
  return 0 if count == $k

  max = -Inf
  unless v.empty?
    vv = v.dup
    p = vv.pop
    aa = a.dup
    aa.push p
    d = p + dfs(aa, vv, count + 1)
    max = d if max < d
    vv = v.dup
    p = vv.shift
    aa = a.dup
    aa.push p
    d = p + dfs(aa, vv, count + 1)
    max = d if max < d
  end
  unless a.empty?
    vv = v.dup
    aa = a.sort_by(&:-@)
    p = aa.pop
    vv.push p
    d = dfs(aa, vv, count + 1) - p
    max = d if max < d
    vv = v.dup
    aa = a.sort_by(&:-@)
    p = aa.pop
    vv.unshift p
    d = dfs(aa, vv, count + 1) - p
    max = d if max < d
  end
  max
end
puts [dfs([], $v, 0), 0].max
