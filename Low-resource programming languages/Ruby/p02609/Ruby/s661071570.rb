n = gets.to_i
x = gets.chomp.to_i(2)

bitcnt = 0
n.times do |i|
  if x[i] == 1
    bitcnt += 1
  end
end

def bitmod(n,k)
  n %= k
  res = 1
  while n > 0
    bitcnt = 0
    n.bit_length.times do |i|
      if n[i] == 1
        bitcnt += 1
      end
    end
    n %= bitcnt
    res += 1
  end
  res
end

n.times do |i|
  l = n - 1 - i
  if x[l] == 1
    v = bitcnt - 1
  else
    v = bitcnt + 1
  end
  u = x ^ (1 << l)
  puts bitmod(u,v)
end
