n,l=gets.split.map(&:to_i)
ls=n.times.map{|i| l+i}.sort{|v1,v2| v1.abs<=>v2.abs}
puts ls[1..n-1].inject(:+)
