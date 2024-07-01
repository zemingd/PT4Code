s = gets.chomp
a = s[0..1].to_i
b = s[2..3].to_i
if (a == 00 || b == 00) || (a > 12 && b > 12)
  puts "NA"
elsif a <= 12 && b <=12
  puts "AMBIGUOUS"
elsif  b >=12
  puts "MMYY"
elsif  a >= 12
  puts "YYMM"
end