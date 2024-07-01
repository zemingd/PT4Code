n,*a=gets.split.map &:to_i
l=(1..n).map{gets.to_i}
m=1e5
[*0..3].repeated_permutation(n){|x|
    s=[q=0,0,0]
    n.times{|i|x[i]<3&&(s[x[i]]+=l[i])>l[i]&&q+=10}
    (0..2).each{|i|q+=(a[i]-s[i]).abs}
    s.all?{|i|i>0}&&q<m&&m=q
}
p m