n=gets.to_i
a=gets.split.map(&:to_i)
b=[]
(a.length).times  do
    v=a.shift
    b.push(v)
    b=b.reverse
    
    
end
puts  b.join(" ")