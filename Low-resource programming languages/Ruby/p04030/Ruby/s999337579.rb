s=gets.chomp.split("").map(&:to_s)
result=[]
for i in 0..s.length-1
    v=s[i]
    if v=="1" || v=="0"
    result.push(v)
    else
    result.pop
    end
end
puts result.join("")
