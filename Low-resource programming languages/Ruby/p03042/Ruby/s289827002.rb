S = gets.chomp.scan(/.{1,#{2}}/).map(&:to_i)
if S[0] >= 13 && S[1] >= 13 || S[0] >= 13 && S[1] == 0 || S[0] == 0 && S[1] >= 13 || S[0] == 0 && S[1] == 0
  puts "NA"
elsif S[0] <= 12 && S[1] <= 12 && S[0] != 0 && S[1] != 0
  puts "AMBIGUOUS"
elsif S[0] <= 12 && S[1] >= 12 || S[0] <= 12 && S[1] == 0
  puts "MMYY"
else
  puts "YYMM"
end