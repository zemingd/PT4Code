n = gets.to_i
p = gets.split.map(&:to_i)
ans = 0
(0..n-3).each do |i|
  cnt = 0
  p[i,3].each do |pi|
    cnt += 1 if p[i+1] > pi
  end
  ans += 1 if cnt == 1
end
puts ans
