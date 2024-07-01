a,b,c,d,e,f=gets.split.map &:to_i
w={}
for i in 0..30
    for j in 0..30
        next if i==0 && j==0
        next if f<100*a*i+100*b*j
        w[100*a*i+100*b*j]=true
    end
end

s={}
for i in 0..(f+c-1)/c
    for j in 0..(f+d-1)/d
        next if c*i+d*j>f
        s[c*i+d*j]=true
    end
end

res=[]
w.each{|x,_| s.each{|y,_| res<<[x+y, y] if (100+e)*y<=e*(x+y) && x+y<=f } }
puts res.sort_by{|a, b|b.to_r/a}[-1]*' '
