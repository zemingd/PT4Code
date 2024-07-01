DBG = !true
n,k = gets.split.map{|x| x.to_i}
a = gets.split.map{|x| x.to_i}

msb = 1
msblog = 0
while msb <= k
  msb *= 2
  msblog += 1
end
#msb /= 2
puts "msb #{msb} log #{msblog}" if DBG

restsum = 0
for i in 0...n
  restsum += a[i] & ~(2**msblog - 1)
end
puts "restsum #{restsum}" if DBG

bits = Array.new(msblog, 0)
for i in 0...n
  x = a[i]
  for e in 0...msblog
    bits[e] += 1 if x%2 == 1
    x /= 2
  end
end
print bits if DBG

bestx = 0
for i in 0...msblog
  bestx += 2**i if bits[i] < (n+1)/2
end
puts "#{bestx}" if DBG

if bestx <= k
  sum = 0
  for i in 0...msblog
    sum += ((bestx & (2**i) != 0) ? n-bits[i] : bits[i]) * (2**i)
  end
else
  bestx1 = bestx - 2**(msblog-1)
  sum1 = 0
  for i in 0...msblog
    sum1 += ((bestx1 & (2**i) != 0) ? n-bits[i] : bits[i]) * (2**i)
  end

  bestx2 = bestx
  (msblog-2).downto(0) { |e|
    if (bestx2 & (2**e)) != 0
      bestx2 -= 2**e
      break if bestx2 <= k
    end
  }
  sum2 = 0
  for i in 0...msblog
    sum2 += ((bestx2 & (2**i) != 0) ? n-bits[i] : bits[i]) * (2**i)
  end
  puts "casex s1 #{sum1} b1 #{bestx1} s2 #{sum2} b2 #{bestx2}" if DBG
  sum = [sum1, sum2].max
end
puts "#{restsum + sum}"
