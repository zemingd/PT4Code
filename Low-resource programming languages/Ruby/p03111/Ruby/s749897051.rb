n,*a=gets.split.map &:to_i
l=(1..n).map{gets.to_i}
m=1e5
(4**n).times{|x|
    s=[q=0,0,0]
    x.to_s(4).rjust(n).split("").each_with_index{|e,i|e<'3'&&(s[e.to_i]+=l[i])>l[i]&&q+=10}
    (0..2).each{|i|q+=(a[i]-s[i]).abs}
    s.all?{|i|i>0}&&m=[m,q].min
}
p m