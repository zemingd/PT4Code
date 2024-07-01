n,m=gets.split.map(&:to_i)
as=m.times.map{gets.to_i}
stairs=[0]*(n+1)
m.times{|i| stairs[as[i]]=nil}
stairs[0]=1
stairs[1]= as[0]!=1 ? 1:0
2.upto(n) do |j|
  stairs[j]= stairs[j] ? stairs[j-1]+stairs[j-2]:0
end
puts stairs[n]%1000000007
