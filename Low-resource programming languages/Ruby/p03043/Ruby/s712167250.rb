n,k = gets.split.map(&:to_i)
ans = 0.0
1.upto(n) do |i|
  t = Math.log2((k/i.to_f).ceil)
  t = 0 if !t.finite?
  ans += 1.0 * 2**(-(t.ceil))/n
  #p [i,t] if i < 50
end
p ans
