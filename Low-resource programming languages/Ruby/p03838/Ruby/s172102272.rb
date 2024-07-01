x,y = gets.split.map(&:to_i)
xm=x*(-1)
ym=y*(-1)
d=[]
if xm <= ym
    d.push 2+ym-xm
end
if xm <= y
    d.push 1+y-xm
end
if x <= ym
    d.push 1+ym-x
end
if x <= y
    d.push y-x
end
puts d.min
exit