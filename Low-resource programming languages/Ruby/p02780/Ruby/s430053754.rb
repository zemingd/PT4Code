N,K=gets.split.map &:to_i
p=gets.split.map &:to_i
# 累積和の計算
a=[0]
N.times do |i|
  a<<a[i]+p[i]
end
a.shift
# 隣接するK項の和の計算
s=0
(N-K).times do |i|
  r=a[i+K]-a[i]
  s=[s,r].max
end
# 期待値の計算
puts (s+K)*0.5