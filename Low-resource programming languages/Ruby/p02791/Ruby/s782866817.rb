n=gets.to_i
ary=gets.split.map(&:to_i)
ans=1
(1..n-1).each{|i|ans+=1 if ary[i]<ary[i-1]}
puts ans