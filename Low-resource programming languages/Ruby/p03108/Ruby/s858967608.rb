def memoize(name, cache = Hash.new)
  original = "__unmemoized_#{name}__"
    
  ([Class, Module].include?(self.class) ? self : self.class).class_eval do
    alias_method original, name
    private      original
    define_method(name) { |*args| cache[args] ||= send(original, *args) }
  end 
end 
 
#copied from #5029380
$cache = {}
 
def union(x, y)
  xset = find(x)
  yset = find(y)
  if xset != yset
    $parent[xset] = yset
    $cache[xset] = yset
  end
end
 
def find(i)
  if $cache[i]
    return $cache[i]
  else
    if $parent[i] == -1
      return $cache[i] = i
    else
      $parent[i] = find($parent[i])
      return $cache[i] = $parent[i]
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
 

ans = []
bridges.reverse_each do |x, y|
  ans << inconv(stat)
  union(x,y)
end
 
puts ans.reverse
