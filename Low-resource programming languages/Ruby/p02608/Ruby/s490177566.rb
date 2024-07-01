n=gets.to_i
INF=10010
result=Array.new(INF,0)
for i in 1..n
    for j in 1..n
        for k in 1..n
            v=i**2+j**2+k**2+(i*j)+(j*k)+(i*k)
            if v>n
                break
            end
            result[v-1]+=1
           
        end
    end
    
end

for i in 0..n-1
    p result.shift
end