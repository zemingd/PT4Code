s = gets.chomp
a = s[0, 2].to_i
b = s[2, 2].to_i
mmyy = 1 <= a && a <= 12
yymm = 1 <= b && b <= 12

if mmyy && yymm
  puts 'AMBIGUOUS'
elsif mmyy
  puts 'MMYY'
elsif yymm
  puts 'YYMM'
else
  puts 'NA'
end