n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
b=[0]*(m-1)
b=b.map.with_index{|n,i| (a[i]-a[i+1]).abs}.sort
p b.empty? ? 0:b[0,m-n].inject(:+)