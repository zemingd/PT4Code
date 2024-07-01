def popcount(bits)
  bits = (bits & 0x55555555) + (bits >> 1 & 0x55555555);
  bits = (bits & 0x33333333) + (bits >> 2 & 0x33333333);
  bits = (bits & 0x0f0f0f0f) + (bits >> 4 & 0x0f0f0f0f);
  bits = (bits & 0x00ff00ff) + (bits >> 8 & 0x00ff00ff);
  bits = (bits & 0x0000ffff) + (bits >>16 & 0x0000ffff);
  bits
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

  popcount_n = popcount(xn)
  while xn > 0
    xn = xn % popcount_n
    popcount_n = popcount(xn) if xn > 0
    fx += 1
  end
  puts fx
}
