s=[]
gets
$<.map(&:split).map{|l|c,x=l
c[?n] ?s.insert(0,x) : c[?F]?s.shift: c[?L]?s.pop: s.delete_at(s.index x)
}
puts 1