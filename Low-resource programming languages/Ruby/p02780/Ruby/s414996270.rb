N,K=gets.split.map &:to_i
# 期待値の前計算
p=gets.split.map{|i|(i.to_f+1)/2.0}
# 累積和の計算
a=[0]
N.times do |i|
  a<<a[i]+p[i]
end
# 隣接するK項の和の計算
s=0
(N-K+1).times do |i|
  r=a[i+K]-a[i]
  s=[s,r].max
end
puts s
