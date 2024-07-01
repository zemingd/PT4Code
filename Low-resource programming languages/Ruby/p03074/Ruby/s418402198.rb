N,K = gets.split.map(&:to_i)
s = gets.chomp
d = []
prev = "1"
cnt = 0
s.each_char do |c|
  if prev != c
    d << cnt
    cnt = 1
    prev = c
  else
    cnt += 1
  end
end
d << cnt
#p d
ans = 0
if d.length/2 <= K
  p d.reduce(:+)
  exit
end
ans = d[0,K*2+1].reduce(:+)
t = ans
(d.length/2-K).times do |i|
  t = t - d[i*2] - d[i*2+1] + d[K*2+i*2+1]
  t += d[K*2+i*2+2] if K*2+i*2+2 < d.length
  ans = t if t > ans
  #p t
end
p ans
