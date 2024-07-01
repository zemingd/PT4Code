n, m = gets.split.map &:to_i
s, $q, nm, ans = [], Array.new(n+1){|i|i}, Array.new(n+1, 1), Array.new(m)
m.times{s << gets.split.map(&:to_i)}
ans[m-1] = n*(n-1)/2
def find(x)
  x == $q[x] ? x : $q[x] = find($q[x])
end
(m-1).downto(1){|i| ans[i-1], a, b = ans[i], s[i][0], s[i][1];(ans[i-1] -= nm[$q[a]]*nm[$q[b]]; nm[$q[a]] += nm[$q[b]]; $q[$q[b]] = $q[a]) if find(a) != find(b)}
ans.map{|x| p x}