N, Q = gets.split.map(&:to_i)
@tree = Array.new(N) { [] }
@counter = Array.new(N, 0)

(N - 1).times do |i|
  a, b = gets.split.map(&:to_i)
  @tree[a - 1] << b - 1
  @tree[b - 1] << a - 1
end

Q.times do |i|
  p, x = gets.split.map(&:to_i)
  @counter[p - 1] += x
end

def dfs(v, parent = -1)
  @tree[v].each do |child|
    next if child == parent
    @counter[child] += @counter[v]
    dfs(child, v)
  end
end

dfs(0)

puts @counter.join(' ')
