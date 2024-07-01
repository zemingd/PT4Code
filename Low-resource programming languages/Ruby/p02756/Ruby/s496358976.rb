s=gets.chomp
Q=gets.to_i

cnt=0
l=''
r=''
Q.times do
    query = gets.chomp.split
    if query[0] == '1'
        cnt ^= 1
    else
        if (query[1].to_i-1) ^ cnt == 0
            l = query[2] + l
        else
            r += query[2]
        end
    end
end


ans = l + s + r
ans.reverse! if cnt == 1

puts ans
