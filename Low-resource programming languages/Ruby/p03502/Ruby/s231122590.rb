n = gets.to_i

def ketasum(n)
    ret = 0
    loop{
        if n==0 then
            break
        end
        ret+=n%10
        n/=10
    }
    return ret
end

def is_harshaddo(n)
    return n%ketasum(n)==0
end

puts is_harshaddo(n) ? 'Yes' : 'No'