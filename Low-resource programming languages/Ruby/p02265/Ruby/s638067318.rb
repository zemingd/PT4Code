s=[]
gets
$<.map(&:split).map{|l|c,x=l
c[?n]?1: c[?F]?s.shift: c[?L]?s.pop: s.delete_at(s.index x)
}
puts 1