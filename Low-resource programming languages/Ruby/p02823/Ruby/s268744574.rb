inputs = gets

inputs = inputs.split " "

result = 0

if inputs[1]<inputs[2]
    p1=inputs[1].to_i
    p2=inputs[2].to_i
elsif inputs[2]<inputs[1]
    p1=inputs[2].to_i
    p2=inputs[1].to_i
end

if (p1 - p2)%2 != 0 
    tmp1 = p1 - 1
    tmp2 = inputs[0].to_i - p2
    if tmp1 < tmp2 
        while p1 > 1
            p1 -= 1
            p2 -= 1
            result +=1
        end
        p2 -= 1
        result += 1
    elsif tmp2 < tmp1
        while p1 < inputs[0].to_i
            p1 += 1
            p2 += 1
            result +=1
        end
        p2 += 1
        result += 1
    end
end

while p1 != p2
    p1+=1
    p2-=1
    result+=1
end

puts result
