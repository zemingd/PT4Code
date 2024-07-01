S = gets.chomp

ab =S.slice(0..1).to_i
cd =S.slice(2..3).to_i

if  0 < ab && ab < 13
    if 0 < cd && cd < 13
        puts 'AMBIGUOUS'
    else
        puts 'MMYY'
    end
else
    if 0 < cd && cd < 13
        puts 'YYMM'
    else
        puts 'NA'
    end
end

