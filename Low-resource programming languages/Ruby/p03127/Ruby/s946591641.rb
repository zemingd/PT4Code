n=gets.to_i
a=gets.split.map(&:to_i)
v=a.uniq
if v.length==1
p a[0]
exit
end
a.sort!
while true
    first=a[0]
    second=a[1]
    v=(first-second).abs
    if first!=v && second!=v
        a.push(v)
        a.sort!
    else
    break
    end
end
p a[0]
    