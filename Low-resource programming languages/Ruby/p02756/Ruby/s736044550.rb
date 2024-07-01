s = gets.chomp
q = gets.chomp.to_i
query = []
reverse_flag = true #trueなら通常、falseなら逆
while(true)
    qq = gets.chomp.split
    if qq[0] == '1'
        reverse_flag = !reverse_flag
    else
        if qq[1] == '1' && reverse_flag
            s.insert(0,qq[2])
        elsif qq[1] == '1' && !reverse_flag
            s.insert(s.size,qq[2])
        elsif qq[1] == '2' && !reverse_flag
            s.insert(0,qq[2])
        elsif qq[1] == '2' && reverse_flag
            s.insert(s.size,qq[2])
        end
    end
    puts s
    query.push(qq)
    if query.size == q 
        break
    end
end
if reverse_flag
    print s
else
    print s.reverse
end