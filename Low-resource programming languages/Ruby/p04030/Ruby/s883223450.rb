m=gets.chomp.to_s
v=m.split("")
result=[]
for i in 0.. v.length-1
    if v[i]=="B"
        result.pop
        next
    end
    result.push(v[i])
end
puts result.join("")