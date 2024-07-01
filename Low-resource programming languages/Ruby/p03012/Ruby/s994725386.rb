n,ans=gets.to_i,[]
d=gets.split.map(&:to_i)
(n-1).times{|i|ans<<(d[0,i+1].inject(:+)-d[i+1,n].inject(:+)).abs}
puts ans.min