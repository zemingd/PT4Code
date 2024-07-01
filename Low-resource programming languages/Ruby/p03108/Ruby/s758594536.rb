@n, @m = gets.chomp.split(" ").map(&:to_i)

@a = []
@b = []

@m.times do 
  ai, bi = gets.chomp.split(" ").map(&:to_i)
  @a << ai
  @b << bi
end

MAX_N = 10**5

@par = (1..@n).to_a
@rank = Array.new(@n, 0)

def find(x)
  if @par[x-1] == x
    return x
  else 
    @par[x-1] = find(@par[x-1])
    return @par[x-1]
  end
end

def unite(x, y)
  x = find(x)
  y = find(y)
  if x == y
    return
  end
  if @rank[x-1] < @rank[y-1]
    @par[x-1] = y
  else
    @par[y-1] = x
    if @rank[x-1] == @rank[y-1]
      @rank[x-1] += 1
    end
  end
end

def same(x, y)
  return find(x) == find(y)
end

def size(x)
  x = find(x)
  return @par.count(x)
end

ans = Array.new(@m)
ans[@m-1] = @n * (@n - 1) / 2

(@m-2).downto(0) do |i|
  ai = @a[i + 1]
  bi = @b[i + 1]
  if same(ai, bi)
    ans[i] = ans[i + 1]
  else
    ans[i] = ans[i + 1] - size(ai) * size(bi)  
  end
  unite(ai, bi)
end

puts ans
