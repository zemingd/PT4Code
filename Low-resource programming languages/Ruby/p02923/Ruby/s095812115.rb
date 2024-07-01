N,*H = `dd`.split.map &:to_i
n = 0
ans = 0
(0...N-1).each{ |i|
  if H[i] >= H[i+1]
    n += 1
    ans = [ans, n].max
  else
    n = 0
  end
}
p ans
