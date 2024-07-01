p $<.to_a[1].split.map(&:to_i).each_slice(2).to_a.transpose
.map{|a|a.group_by{|x|x}.map{|k,v|[k,v.size]}.sort_by{|x|-x[1]}}
.map{|a|[a[0][0]] + [a[1]&.slice(0)] + [a.flat_map{|(x,c)|[x] * c}]}
.transpose
.inject{|m,i|
  i.all?{|ii|ii.class.to_s != 'Array'} ?
  (m + i) :
  (m[0] != m[1] ?
    (i[0].count{|ii|ii != m[0]} + i[1].count{|ii|ii != m[1]}) :
    [
      i[0].count{|ii|ii != m[0]} + i[1].count{|ii|ii != m[3]},
      i[0].count{|ii|ii != m[2]} + i[1].count{|ii|ii != m[1]}
    ].min
  )
}
