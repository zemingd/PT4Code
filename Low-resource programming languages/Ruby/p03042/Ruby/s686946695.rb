s = gets.chomp
a = s[0,2].to_i
b = s[2,2].to_i

if a == 0 || b == 0 || (a>12 && b>12)
  puts "NA"
elsif a >= 1 && a <= 12 && b >= 1 && b <= 12
  puts "AMBIGUOUS"
elsif a > 12
  puts "YYMM"
else
  puts "MMYY"
end
