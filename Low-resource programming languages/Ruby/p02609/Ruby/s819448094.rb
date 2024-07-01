def popcount(n)
  popcount_n = 0
  while n > 0
    popcount_n += (n & 1)
    n = n >> 1
  end
  popcount_n
end

def popcount2(base_popcount, x, mask)
  ret = 0
  if (x & mask) > 0
    ret = base_popcount - 1
  else
    ret = base_popcount + 1
  end
  ret
end

N0, x0 = $stdin.read.split(/\s+/)
N = N0.to_i
x = x0.to_i(2)

x_bits = x0.size - 1
base_popcount = popcount(x)
1.upto(N) {|n|
  mask = 1 << (x_bits - n + 1)
  xn = x ^ mask
  fx = 0

  popcount_n = popcount2(base_popcount, x, mask)
  while xn > 0
    xn = xn % popcount_n
    popcount_n = popcount(xn) if xn > 0
    fx += 1
  end
  puts fx
}
