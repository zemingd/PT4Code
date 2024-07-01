N,*D = `dd`.split.map &:to_i
D.sort!
Mod = 998244353
ans = 1
cs = {}
D.each{ |d|
  if d > 0
    ans = ans * (cs[d-1] || 0) % Mod
  end
  cs[d] = (cs[d] || 0) + 1
}
p ans