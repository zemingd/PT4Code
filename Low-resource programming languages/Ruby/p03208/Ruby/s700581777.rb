n,m=gets.split.map(&:to_i)
s=n.times.map{gets.split.to_i}

s.sort!
a=s[-1]-s[0]
for i in 0..s.length-3
    v=s[i+m-1]-s[i]
    if v<a
    a=v
    end
end

p a