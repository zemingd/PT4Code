n,*a=gets.split.map &:to_i
l=(1..n).map{gets.to_i}
m=9000
for x in 0...4**n
    s=[q=0,0,0]
    x.to_s(4).rjust(n,"0").split("").each_with_index{|e,i|e<'3'&&(s[e.to_i]+=l[i])>l[i]&&q+=10}
    (0..2).each{|i|q+=(a[i]-s[i]).abs}
    m=[m,q].min if s.all?{|i|i>0}
end
p m