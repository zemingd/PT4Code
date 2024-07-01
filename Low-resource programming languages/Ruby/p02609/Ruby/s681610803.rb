n = gets.to_i
x = gets.chomp.to_i(2)

def popcount(bits)
  bits = (bits & 0x55555555) + (bits >> 1 & 0x55555555);
  bits = (bits & 0x33333333) + (bits >> 2 & 0x33333333);
  bits = (bits & 0x0f0f0f0f) + (bits >> 4 & 0x0f0f0f0f);
  bits = (bits & 0x00ff00ff) + (bits >> 8 & 0x00ff00ff);
  return (bits & 0x0000ffff) + (bits >>16 & 0x0000ffff);
end

def bitmod(n)
  res = 0
  while n > 0
    bitcnt = popcount(n)
    n %= bitcnt
    res += 1
  end
  res
end

n.times do |i|
  l = n - 1 - i
  u = x ^ (1 << l)
  puts bitmod(u)
end
