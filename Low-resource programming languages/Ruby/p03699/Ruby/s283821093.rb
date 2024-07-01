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
cnt = 0
sum_max = $numAry.inject(:+)
if(sum_max % 10 == 0)
    while(cnt < $numAry.size())
        sum = calc_eliminated(cnt)
        if(sum > sum_max)
            sum_max = sum
        else
            cnt = cnt+1
        end
    end
end

puts sum_max