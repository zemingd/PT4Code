n,*a=gets.split.map &:to_i
l=(1..n).map{gets.to_i}
m=9000
for x in 0...4**n
    s=[0,0,0]
    q=0
    x.to_s(4).rjust(n,"0").split("").map(&:to_i).each_with_index{|e,i|
        next if e>2
        q+=10 if s[e]>0
        s[e]+=l[i]
    }
    m=[m,(0..2).inject(q){|i,j|i+(a[j]-s[j]).abs}].min if s.none?{|i|i<1}
end
p m