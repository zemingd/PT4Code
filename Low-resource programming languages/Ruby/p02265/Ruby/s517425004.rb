l=[]
gets
$<.each{|s|a,b=s.split
a=a[-4]
a>?l?(l.unshift b):a>?i?(n=l.index b)&&l.delete_at(n):a>?L?l.shift: l.pop}
puts l*" "