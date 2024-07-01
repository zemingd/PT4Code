N, M = gets.split.map(&:to_i)
Bs = readlines.map{|l| l.split.map(&:to_i)}

@p = [*0 .. N]
@r = Array.new(N + 1, 1)

def root(x)
  @p[x] == x ? x : @p[x] = root(@p[x])
end

def unite(x, y)
  x, y = root(x), root(y)
  return 0 if x == y
  r = @r[x] * @r[y]
  if @r[x] < @r[y]
    @p[x] = y
    @r[y] += @r[x]
  else
    @p[y] = x
    @r[x] += @r[y]
  end
  r
end

puts Bs.reverse.inject([N*(N-1)/2]){|a, (x, y)| a << a.last - (root(x) == root(y) ? 0 : unite(x, y))}.reverse.drop(1).join("\n")