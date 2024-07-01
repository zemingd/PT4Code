S = gets.strip

a=(S[0]+S[1]).to_i
b=(S[2]+S[3]).to_i

if 0<a && a<13
    if 0<b && b<13
        puts 'AMBIGUOUS'
    else
        puts 'MMYY'
    end
else
    if 0<b && b<13
        puts 'YYMM'
    else
        puts 'NA'
    end
end


