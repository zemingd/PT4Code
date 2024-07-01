x=gets.to_i

while 1
    n=(x**0.5).to_i
    count=0
    2.upto(n) do |i|
        if x%i != 0
            count+=1
        end
    end
    if count==n-1
        puts x
        return
    else
        x+=1
    end
end
