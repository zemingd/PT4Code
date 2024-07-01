nn = gets.to_i
aa = gets.split.map(&:to_i).sort

# 0を使う場合、最小から2つめを採用
g=[]
a0 = aa[0]
(nn-1).times do |i|
  g<< a0.gcd(aa[i+1])
end
mins = g.min(2)

# 0を使わない場合
a0 = aa[1]
min = aa[1]
(nn-2).times do |i|
  a0 = a0.gcd(aa[i+2])
end

puts  [mins[-1],a0].max

#これと全要素でgcd
# (nn).times do |i|
#   g0=g0.gcd(aa[i])
# end