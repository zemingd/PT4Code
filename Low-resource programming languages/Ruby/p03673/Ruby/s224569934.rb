n = gets.to_i
a = gets.split.map(&:to_i)
x=[]
y=[]
n.times do |i|
    if i.even?
        x<< a[i]
    else
        y<< a[i]
    end
end
if n.odd?
    b=x.reverse+y
else
    b=y.reverse+x
end
puts b.join(' ')