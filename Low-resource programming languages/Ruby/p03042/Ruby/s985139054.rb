s = gets.chomp
data1 = s[0..1].to_i
data2 = s[2..3].to_i

mmyy = (1 <= data1 && data1 <= 12)
yymm = (1 <= data2 && data2 <= 12)

if yymm && mmyy
  puts "AMBIGUOUS"
elsif yymm
  puts "YYMM"
elsif mmyy
  puts "MMYY"
else
  puts "NA"
end