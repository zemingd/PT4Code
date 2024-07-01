n=gets.to_i

result=[]

for i in 0..n-1
    m=gets.to_i
    first_bit=0
    first_bit=first_bit|(1<<(i+1))
    for j in 0..m-1
        v=gets.split.map(&:to_i)
        
        if v[1]==1
        first_bit=first_bit|(1<<v[0])
        else
         first_bit=first_bit&~(1<<v[0])
        end
        p first_bit.to_s(2)
    
        
    end
    result<<first_bit
    p result.map{|n| n.to_s(2)}
end

count=0
for i in 0..result.length-1
    for j in 0..result.length-1
        if i==j
        next
        end
        if result[i]==result[j]
            count+=1
        end
    end
end
if n==2 && count==0
    p 1
    exit
end
p count