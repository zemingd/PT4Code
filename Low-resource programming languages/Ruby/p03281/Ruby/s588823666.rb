n = $stdin.read.to_i
a = (1..100).map{|i| i * 2 - 1 }
res = 0
a.each do |i|
  cnt = 0
  a.each do |k|
    cnt += 1 if i % k == 0
    break if i < k
  end
  res += 1 if cnt == 8
  break if i == n
end
puts res
