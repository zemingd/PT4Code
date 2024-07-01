def bin(n, size)
  ar = Array.new(size, 0)
  for i in 0..(size-1)
    ar[i] = n/(2**(size-1-i))
    n -= 2**(size-1-i) * ar[i]
  end
  return ar
end

n = gets.to_i
a = Array.new(n)
x = Array.new(n).map{Array.new(0)}
y = Array.new(n).map{Array.new(0)}
for i in 0..(n-1)
  a[i] = gets.to_i
  x[i], y[i] = a[i].times.map{gets.split.map(&:to_i)}.transpose
end

max = 0
for i in 0..(2**n-1)
  bits = bin(i, n)
  flag = 1
  for j in 0..(n-1)
    if bits[j] == 1
      for k in 0..(a[j]-1)
        if bits[x[j][k]-1] != y[j][k]
          flag = 0
          break
        end
      end
    end
  end
  if flag == 1
    cnt = 0
    bits.each{|bn| cnt += bn}
    max = [cnt,max].max
  end
end
puts max