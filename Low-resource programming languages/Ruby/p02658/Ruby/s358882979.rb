N,*A = `dd`.split.map &:to_i
SUP = 10 ** 18
p A.reduce(1){ |s,a|
  if s >= 0
    s *= a
  end
  s <= SUP ? s : -1
}