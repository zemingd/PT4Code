s=[]
gets
$<.map(&:split).map{|l|c,x=l
c[?n]?s.unshift(x):c[?F]?s.shift: p#c[?L]?s.pop: s.delete_at(s.index x)
}
puts 1