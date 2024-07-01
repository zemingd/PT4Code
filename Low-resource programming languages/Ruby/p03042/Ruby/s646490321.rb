def bb
	s = gets.chomp

    aa = s[0..1].to_i
    bb = s[2..3].to_i

    fmt = 0
    fmt = 1 if bb >= 1 and bb <= 12 # YYMM
    fmt += 2 if aa >= 1 and aa <= 12 # MMYY

    case fmt
    when 0; puts 'NA'
    when 1; puts 'YYMM'
    when 2; puts 'MMYY'
    when 3; puts 'AMBIGUOUS'
    else puts 'NA'
    end
end

bb