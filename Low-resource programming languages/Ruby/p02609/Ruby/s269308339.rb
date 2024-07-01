n = gets.to_i
x = gets.chomp
popcount = x.count('1')
x = '0' * (n - x.size) + x if x.size < n
d = popcount.to_s(2).size

x_sub = x[n - d - 1..-1]
y = x_sub.to_i(2)
# p x_sub.size
n.times do |i|
  z = y
  # p [z, x, x_sub]
  pc = popcount + (x[i] == '1' ? -1 : 1)
  if i >= n - d - 1
    if x[i] == '1'
      z &= ~(1 << (d - (i - (n - d - 1))))
    else
      z |= (1 << (d - (i - (n - d - 1))))
    end
  end
  tmp = z % pc
  ans = 1
  while tmp > 0
    pc = tmp.to_s(2).count('1')
    tmp %= pc
    ans += 1
  end
  # p [z, ans]
  p ans
end
