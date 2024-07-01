N=gets.to_i
s=[0]
gets.split.map{|t|s << s[-1]+t.to_i}
p s[1,N-1].map{|t|(s[-1]-t*2).abs}.min