S = gets.chomp
a = (S[0]+S[1]).to_i
b = (S[2]+S[3]).to_i

if a >= 1 && a <= 12 then
    if b >= 1 && b <= 12 then
        print 'AMBIGUOUS'
    else
        print 'MMYY'
    end
else
    if b >= 1 && b <= 12 then
        print 'YYMM'
    else
        print 'NA'
    end
end