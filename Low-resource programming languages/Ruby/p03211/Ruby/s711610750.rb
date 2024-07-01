#ABC114B

#gets strrings from console, gets length of them

numStr = gets.chomp

lenStr = numStr.length

i = 0

while lenStr > 2
    numComp = numStr[i,3].to_i
    #puts numComp

    absolute = (numComp - 753).abs
    
    if i==0
        difference = absolute
    
    else
        if difference > absolute
            difference = absolute
        end
    end

    i+=1
    lenStr -= 1
end
puts difference