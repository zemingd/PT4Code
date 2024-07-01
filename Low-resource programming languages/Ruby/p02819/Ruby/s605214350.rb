n = gets.to_i
ans = 0
flag = true
while flag
    if (n==2)||(n==3)
        puts n
        break
    end
    2.upto((n**0.5).floor) do |i|
        if n%i==0
            flag = true
            break
        else
            flag = false
        end
    end
    if flag
        n+=1
    else
        puts n
        break
    end
end