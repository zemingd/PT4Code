(n,m)=gets.split.map(&:to_i)
lr = ARGF.map {|s|s.split.map(&:to_i) } + [[1,n]]

print [lr.min_by {|a|a[1]}[1] - lr.max_by {|a|a[0]}[0] +1, 0].max
