S = gets.chomp
S[0,2] = if 1 <= S[0,2].to_i && S[0,2].to_i <= 12 then "MM" else "YY" end
S[2,2] = if 1 <= S[2,2].to_i && S[2,2].to_i <= 12 then "MM" else "YY" end
puts({"MMMM"=>"AMBIGUOUS", "YYMM"=>"YYMM", "MMYY"=>"MMYY", "YYYY"=>"NA"}[S])
