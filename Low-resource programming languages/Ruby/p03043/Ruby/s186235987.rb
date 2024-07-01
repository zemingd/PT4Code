def coin(dice,k)
    if dice == 1 then
        value = Math.log(k.to_f) / Math.log(2.to_f)
        return 0.5**(value.floor+1)
    else

        value = Math.log(k.to_f) / Math.log(dice.to_f)
        return 0.5**(value.floor)
    end
end

num = gets.split(" ").map{|item|item.to_i}
    ans = 0
    num[0].times{|xi|
        if xi+1 < num[1] then
            ans += coin(xi+1,num[1])/num[0]
        else
            ans += 1.0/num[0].to_f
        end
    }
    print ans



