n=gets.to_i
w=gets.split.map(&:to_i)
s=w.inject(:+)
m=s
d = s
for i in 0..n-1 do
    d-=w[i]*2
    if d.abs < m 
        m = d.abs;
    end
end
p m

