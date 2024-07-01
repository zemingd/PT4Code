n,k=gets.split.map(&:to_i)
hs = readlines.map(&:to_i)

hs.sort!

ret = 1_000_000_000
0.upto(n-k) do |i|
  t = hs[i+k-1] - hs[i]
  if t < ret
    ret = t
  end
end

p ret