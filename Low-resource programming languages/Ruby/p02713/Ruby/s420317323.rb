n=gets.to_i
ans=0

n.times{|a|
    
    n.times{|b|
        if (a+1).gcd(b+1)==1
            ans+=n
        else
        
        n.times{|c|
            
            aa=(a+1).gcd(b+1)
            abc=(aa).gcd(c+1)
            ans+=abc
        }
        end
        
    }
    
}

puts ans