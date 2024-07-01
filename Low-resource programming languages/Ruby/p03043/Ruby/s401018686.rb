n,k = gets.split.map(&:to_i)

ans = 0
li = [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072]
idx = -1
li.each_with_index do |v,i|
  if v >= k
    idx = i
    break
  end
end

nn = n
if n >= k
  nn = k - 1
end

nn.times do |i|
  z = i + 1
  cnt = 0
  (1..idx+1).each do |ii|
    z *= 2
    if z >= k
      cnt = ii
      break
    end
  end
  hh = 1/n.to_f
  jj = 1.to_f/(2**cnt).to_f
  ans += hh * jj
end

if n != nn
  ans += (n-k+1) / n.to_f
end

puts ans
