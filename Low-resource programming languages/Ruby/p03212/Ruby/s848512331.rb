def solve(n)
    x=-1
    ans=0
    while true
        x+=1
        s=x.to_s(4).gsub("3","7").gsub("2","5").gsub("1","3")
        next if s.include?("0")
        if n<s.to_i
            break
        end
        if s.include?("3") && s.include?("5") && s.include?("7")
            ans+=1
        end
    end
    return ans
end

puts solve(gets.to_i)