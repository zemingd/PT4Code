N, Q = gets.split.map &:to_i

tree = (N+1).times.map{ [] }
(N-1).times{
  a, b = gets.split.map &:to_i
  tree[a] << b
}
counters = [0] * (N+1)
Q.times{
  vortex, cnt = gets.split.map &:to_i
  counters[vortex] += cnt
}
# p counters
ans = [0] * (N+1)

f=->from, n{
  ans[from] = n+counters[from]
  tree[from].each{|to|
    f[to, ans[from]]
  }
}

f[1, 0]

puts ans[1..-1]*" "