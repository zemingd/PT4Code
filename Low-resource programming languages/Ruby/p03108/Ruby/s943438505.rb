$cache = {}

def union(x, y)
  xset = find(x)
  yset = find(y)
  if xset != yset
    if $rank[xset] < $rank[yset]
      xset, yset = yset, xset
    end
      
    $parent[xset] = yset
    $rank[xset] = [$rank[xset], $rank[yset] + 1].max
    $cache = {}
  end
end

def find(i)
  if $cache[i]
    return $cache[i]
  else
    if $parent[i] == -1
      return $cache[i] = i
    else
      return $cache[i] = $parent[i] = find($parent[i])
    end
  end
end

def stat
  h = {}
  (1 .. $n).each do |i|
    next if i == 0

    h[find(i)] ||= 0
    h[find(i)] += 1
  end
  h
end

def inconv(s)
  total = s.values.inject(0, :+)
  s.values.map { |n|
    n * (total - n)
  }.inject(0, :+) / 2
end

$n, $m = gets.split.map(&:to_i)

bridges = $m.times.map { gets.split.map(&:to_i) }
$parent = Array.new($n + 1, -1)
$rank = Array.new($n + 1, 1)

ans = []
bridges.reverse_each do |x, y|
  ans << inconv(stat)
  union(x,y)
end

puts ans.reverse
