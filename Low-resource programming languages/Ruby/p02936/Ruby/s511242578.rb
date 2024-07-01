n, q = gets.split.map(&:to_i)

$ab = (n + 1).times.map{Array.new}
(n - 1).times do
  a, b = gets.split.map(&:to_i)
  $ab[a] << b
  $ab[b] << a
end

$ans = Array.new(n + 1, 0)
q.times do
  p, x = gets.split.map(&:to_i)
  $ans[p] += x
end

def dfs(n, p = -1)
  $ab[n].each do |c|
    next if c == p
#    $ans[c] += $ans[n]
    dfs(c, n)
  end
end

dfs(1)
puts $ans[1..-1].join(' ')
