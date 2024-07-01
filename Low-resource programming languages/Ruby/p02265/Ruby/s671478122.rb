s=[]
gets
$<.map(&:split).map{|l|c,x=l
c ?c[?n]?s.unshift(x):c[?F]?s.shift: c[?L]?s.pop: s.delete_at(s.index x):next}
puts s*" "