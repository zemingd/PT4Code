N,*D = `dd`.split.map &:to_i
D.sort!
Mod = 998244353
ans = 1
cs = {}
D.each{ |d|
  if d == 0
    if cs[d]
      ans = 0
      break
    end
  else
    ans = ans * (cs[d-1] || 0) % Mod
  end
  cs[d] = (cs[d] || 0) + 1
}
p ans