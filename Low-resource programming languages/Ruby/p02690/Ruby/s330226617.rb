x = gets.split[0].to_i
i =1
j = []
for i in 1..63
    j.push(i**5)
end
ary = Array.new().map{Array.new(3,0)}
n = 1
for n in 1..61
    m = n
    for m in n..62
        r = j[n-1]+j[m-1] 
        if r<=1000000000
            ary.push([n,-1*m,r])
        end
        q = j[n-1]-j[m-1]
        if 1 <= q && q <= 1000000000
            aray.push([n,m,q])
        end 
    end
end
ary2 = ary.find { |v| v[2] == x }
print ary2[0]
print ' '
print ary2[1]