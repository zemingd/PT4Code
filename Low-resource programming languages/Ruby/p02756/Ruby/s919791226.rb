s = gets.chomp
q = gets.chomp.to_i
query = []
while(true)
    qq = gets.chomp.split
    if qq[0] == '1'
        s.reverse!
    else
        if qq[1] == '1'
            s = qq[2] + s
        else
            s = s + qq[2]
        end
    end
    query.push(qq)
    if query.size == q 
        break
    end
end

print s