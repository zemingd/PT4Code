n,m = gets.chop.split.map(&:to_i)
l=Array.new(m)
r=Array.new(m)

for i in 0...m
  l[i], r[i]=gets.chop.split.map(&:to_i)
end
  
high_l=l.max
low_r=r.min

result=[n, low_r-high_l+1].min

puts result
