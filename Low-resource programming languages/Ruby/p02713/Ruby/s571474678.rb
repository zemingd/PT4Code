def gcd(a, b)
    if a < b
        a, b = b, a
    end
    r = a % b
    if r == 0
        return b
    end
    return gcd(r, b)
end
k = gets.to_i
sum = 0
k.times{|a|
a+=1
    k.times{|b|
    b+=1
        k.times{|c|
        c+=1
            sum+=gcd(gcd(a,b),c)
        }
    }
}
puts sum