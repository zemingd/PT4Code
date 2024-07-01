$orgAry = Array.new()

def readNum()
    # Count
    str = STDIN.gets
    
    # Read 
    while(str = STDIN.gets)
        $orgAry.push(str.to_i)
    end
    
    $orgAry.sort!
end

def calc(cnt)
    ret = 0
    ($orgAry.size()-1).downto(cnt) do |idx|
        ret = ret + $orgAry[idx]
    end
    
    if(ret % 10 == 0)
        ret = 0
    end

    return ret
end

# Main
readNum()
cnt = 0
sum_max = 0;
while(cnt < $orgAry.size())
    sum = calc(cnt)
    if(sum > sum_max)
        puts sum
        exit(0)
    else
        cnt = cnt+1
    end
end

puts 0