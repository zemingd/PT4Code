$numAry = Array.new()
$patternAry = Array.new()

def readNum()
    # Count
    str = STDIN.gets.to_i
    
    # Read 
    while(str = STDIN.gets)
        $numAry.push(str.to_i)
    end
    
    $numAry.sort!
end

def calc_eliminated(idx)
    ret = $numAry.inject(:+)
    
    ret -= $numAry[idx]
    
    if(ret % 10 == 0)
        ret = 0
    end

    return ret
end

# Main
readNum()
sum = $numAry.inject(:+)

if(sum % 10 == 0)
    cnt = 0
    elimedAry = Array.new()
    while(cnt < $numAry.size())
        elimedAry[cnt] = calc_eliminated(cnt)
    end
    sum = elimedAry.max
end

puts sum