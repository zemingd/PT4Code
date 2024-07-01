l=[]
gets
$<.map{|s|a,b=s.split;a=a[-4];a>?s?(l.pop):a>?l?(l=[b]+l):a>?i?(n=l.index b)&&l.delete_at(n):l.shift}
puts l*" "