n=gets.to_i
x=gets.split.map(&:to_i)
m = 100000
mi,mx = x.minmax
for i in mi..mx
    s = 0
    for j in 0...n
        s += (x[j]-i)*(x[j]-i)
    end
    m = (m<s)?m:s
end
p m

