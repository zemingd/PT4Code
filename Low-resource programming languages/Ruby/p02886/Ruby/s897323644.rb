n=gets.to_i
ds=gets.split.map(&:to_i)
ans=0
ds.combination(2){|x,y| ans+=x*y}
puts ans
