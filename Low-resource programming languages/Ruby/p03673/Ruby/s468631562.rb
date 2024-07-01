n=gets.to_i
a=gets.split.map(&:to_i)
b=[]
if a.length%2==0
(a.length).times  do |i|
    v=a.shift
    if i%2!=0
        b.unshift(v)
    else
        b.push(v)
    end
end
else
    (a.length).times  do |i|
    v=a.shift
    if i%2!=0
        b.push(v)
    else
        b.unshift(v)
    end
    end
   
end
puts  b.join(" ")