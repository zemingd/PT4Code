s=[]
gets
$<.map(&:split).map{|l|c,x=l
c[?n]?s.unshift(x):c[?F]?s.shift: c[?L]?s.pop: (i=s.index x)&&(s.delete_at i)}
puts s*" "