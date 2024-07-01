k=gets.to_i
cnt=0
for i in 1..k
    for j in i..k
        if (i+j)%2==1 && i!=j
            cnt+=1
        end
    end
end
p cnt