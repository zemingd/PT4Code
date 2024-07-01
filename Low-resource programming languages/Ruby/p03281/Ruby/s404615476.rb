n=gets.to_i

ans=0
1.step(n,2) do |i|
    count=0
    1.upto(i) do |j|
        if i%j==0
            count+=1
        end
    end
    if count==8
        ans+=1
    end
end
puts ans
