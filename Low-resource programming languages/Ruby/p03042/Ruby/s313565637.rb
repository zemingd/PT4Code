s=gets.chomp
ss1 = s[0..1].to_i
ss2 = s[2..3].to_i
if (ss1 > 12 && ss2 > 12) || (ss1 * ss2 == 0)
  puts "NA"
elsif ss1 <= 12 && ss2 <= 12
  puts "AMBIGUOUS"
elsif ss1 <= 12
  puts "MMYY"
elsif ss2 <= 12
  puts "YYMM"
end