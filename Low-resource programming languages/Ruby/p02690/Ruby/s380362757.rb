x = gets.split[0].to_i
i =1
j = []
for i in 0..63
    j.push(i**5)
end
ary = Array.new().map{Array.new(3,0)}
n = 0
for n in 0..62
    m = n
    for m in n+1..63
        r = j[n]+j[m] 
        if r<=1000000000
            ary.push([n,-1*m,r])
        end
        q = j[n]-j[m]
        if 1 <= q && q <= 1000000000
            aray.push([n,m,q])
        end 
    end
end
ary2 = ary.find { |v| v[2] == x }
print ary2[0]
print ' '
print ary2[1]