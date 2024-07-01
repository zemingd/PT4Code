N,A,B,C=gets.split.map &:to_i
L=N.times.map{gets.to_i}.sort.reverse
m=A+B+C
(4**N).times.map{|i|
    s=i.to_s(4).rjust(N,"0").chars
    a=[];b=[];c=[]
    N.times{|j|
        a << L[j] if s[j]=="0"
        b << L[j] if s[j]=="1"
        c << L[j] if s[j]=="2"
    }
    if a!=[] && b!=[] && c!=[] then
        s=(a.size-1)*10+(a.inject(:+)-A).abs+(b.size-1)*10+(b.inject(:+)-B).abs+(c.size-1)*10+(c.inject(:+)-C).abs
        m=s if s<m
    end
}
p m