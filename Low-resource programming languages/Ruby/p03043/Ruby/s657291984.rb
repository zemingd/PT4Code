N,K = gets.split.map(&:to_i)
res = 0.to_f
(1..N).each do |i|
  tmp,cnt = i,0
  while( tmp < K )
    tmp *= 2
    cnt += 1
  end
  res += (1.to_f/N) * (1.to_f/2)**cnt.to_f
end
p res