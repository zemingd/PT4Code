N = 10**6
a = (N+1).times.map{0}
gets
gets.split do |s|
  a[s.to_i] += 1
end
ans = 0
(1..N).each do |i|
  next if a[i] == 0
  ans += 1 if a[i]==1
  j = i*2
  while j <= N
    a[j] = 0
    j += i
  end
end
p ans
