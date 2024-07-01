n, q = gets.split(' ').map(&:to_i)

@trees = Array.new(n) { [] }
@val = Array.new(n) { 0 }

(n-1).times.each do
  p, c = gets.split(' ')

  @trees[p.to_i - 1] << c.to_i - 1
  @trees[c.to_i - 1] << p.to_i - 1
end

q.times.each do
  p, x = gets.split(' ')
  @val[p.to_i - 1] += x.to_i
end

def dfs(v, p = -1)
  @trees[v].each do |u|
    if u != p
      @val[u] += @val[v]
      dfs(u, v)
    end
  end
end

dfs(0)

@val.each do |n|
  puts n
end
