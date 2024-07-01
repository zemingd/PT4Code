gets.to_i
ary=gets.split.map(&:to_i)
ans=10**8
(ary.min..ary.max).each do |p|
  m=0
  ary.sort.each{|x|m+=(x-p)**2}
  ans=m if ans>m
end
p ans
