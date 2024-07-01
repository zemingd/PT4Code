m=gets.split.map(&:to_i)
n= m.combination(2).to_a
r=[]
for i in 0..n.length-1
    r<<n[i].inject(&:+);
end

p r.min