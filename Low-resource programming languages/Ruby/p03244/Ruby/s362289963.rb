p $<.to_a[1].split.map(&:to_i).each_slice(2).to_a.transpose
.map{|a|a.group_by{|x|x}.map{|k,v|[k,v.size]}.sort_by{|x|-x[1]}}
.map{|a|[a[0][0]] + [a[1]&.slice(0)] + [a.flat_map{|(x,c)|[x] * c}]}
.transpose
.tap{|a|break a[0].uniq.size == 2 ?
  a[2][0].count{|x|x != a[0][0]} + a[2][1].count{|x|x != a[0][1]}:
  [
    a[2][0].count{|x|x != a[1][0]} + a[2][1].count{|x|x != a[0][1]},
    a[2][0].count{|x|x != a[0][0]} + a[2][1].count{|x|x != a[1][1]}
  ].min
}
