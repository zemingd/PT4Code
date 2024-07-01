n=gets.to_i
s=[]
n.times.each do
    v=gets.to_s
    if s.index(v)
        s.delete(v)
    else
    s.push(v)
    end
end
p s.count