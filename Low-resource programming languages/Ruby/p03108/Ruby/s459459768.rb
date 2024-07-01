def union(x, y)
  xset = find(x)
  yset = find(y)
  if xset != yset
    $parent[xset] = yset
  end
end

def find(i)
  if $parent[i] == -1
    return i
  else
    return find($parent[i])
  end
end

def rank(set)
  count = 1
  nodes = { set => true}
  (set - 1).downto(1) do |i|
    if nodes[$parent[i]]
      count += 1
      nodes[i] = true
    end
  end
  return count
end

$n, $m = gets.split.map(&:to_i)

bridges = $m.times.map { gets.split.map(&:to_i) }
$parent = Array.new($n + 1, -1)

ans = []
inconv = ($n - 1) * $n / 2
bridges.reverse_each do |x, y|
  ans << inconv
  xset = find(x)
  yset = find(y)
  if xset != yset
    inconv -= rank(xset) * rank(yset)
  end
  union(x,y)
end

puts ans.reverse
