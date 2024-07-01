n, q = gets.split.map(&:to_i)
tree = Array.new(n) {[]}
(n - 1).times do
  a, b = gets.split.map(&:to_i)
  tree[a - 1] << b - 1
  tree[b - 1] << a - 1
end

total = Array.new(n, 0)
q.times do
  p, x = gets.split.map(&:to_i)
  total[p - 1] += x
end

ans = Array.new(n, 0)
dfs = ->(v, p, value) {
  value += total[v]
  ans[v] = value
  tree[v].each do |c|
    next if c == p
    dfs.(c, v, value)
  end
}
dfs.(0, -1, 0)

puts ans.join(" ")