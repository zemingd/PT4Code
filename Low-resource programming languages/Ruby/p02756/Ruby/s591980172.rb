s=gets.chomp
Q=gets.chomp.to_i

Q.times do
    q=gets.chomp.split
    if q[0]=='1'
        s.reverse!
        next
    end
    if q[1]=='1'
        s=q[2]+s
        
    else
        s=s+q[2]
    end
end

puts s