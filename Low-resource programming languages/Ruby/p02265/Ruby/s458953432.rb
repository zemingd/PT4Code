s=[]
gets
$<.map(&:split).map{|l|c,x=l
exit unless c
c[?n]?(s.unshift x):c[?F]?s.shift: c[?L]?s.pop: ( s.delete_at(s.index(x)) if s.index(x) )}
puts s*" "