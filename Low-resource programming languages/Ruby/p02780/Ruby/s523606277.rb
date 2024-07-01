N,K=gets.split.map &:to_i
p=gets.split.map(&:to_i)
mdx=p.index(p.max)
sl=N-K
a=0
sl.times do |k|
  r=p[0+k, K].map{|i|(i+1)*0.5}.inject(:+)
  a=[a,r].max
end
puts a
