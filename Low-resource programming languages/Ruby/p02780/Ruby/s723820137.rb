n, k = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_i)

max = 0
ans = 0
(n-k+1).times do |i|
  tmp = p[i, k].inject(:+)
  if max < tmp
    max = tmp
    ans = 0
    p[i, k].each{|e| ans += (e + 1)/2.0}
  end
end
p ans
