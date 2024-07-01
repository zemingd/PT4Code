# Your code here!

number = gets.to_i

string = number.to_s.split("").map(&:to_s)
ll = string.length

arr = [0,0,0,0,0,0,0,0,0]

i = 1
9.times{
    arr[i-1] = 3**i-3-3*(2**i-2)
    
    i+=1
}

 

count = arr[0...ll-1].inject(:+)


k = 0
(3**ll).times{
    three = k.to_s(3).split("").map(&:to_i)
    
    three = Array.new(ll-three.length,0)+three
    
    key = 0
    
    unless three.include?(2) && three.include?(1) && three.include?(0) 
    k+=1
    next
    end
    
    j = 0
    ll.times{
        
        if three[j] == 2
            key+=7*(10**(ll-j-1))
        end
        
        if three[j] == 1
            key+=5*(10**(ll-j-1))
            
        end
        
        if three[j] == 0
            key+=3*(10**(ll-j-1))
        end
    
        
        j+=1
    }
    

    if key<=number
        count+=1
    end

    k+=1
}



puts count




