s = gets.chomp
a = s[0, 2].to_i
b = s[2, 4].to_i
if a > 0 and a < 13 and b > 0 and b < 13 then
  puts "AMBIGUOUS"
elsif a > 0 and a < 13
  puts "MMYY"
elsif b > 0 and b < 13
  puts "YYMM"
else
  puts "NA"
end