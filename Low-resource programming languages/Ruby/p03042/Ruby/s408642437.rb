s = gets
a = s[0..1]
b = s[2..3]

if a == "00" || b == "00"
  puts "NA"
elsif a > "12" && b > "12"
  puts "NA"
elsif a > "12" && b <= "12"
  puts "YYMM"
elsif a <= "12" && b > "12"
  puts "MMYY"
elsif a <= "12" && b <= "12"
  puts "AMBIGUOUS"
end
