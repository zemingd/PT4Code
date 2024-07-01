s = gets.chomp
s1 = s[0..1].to_i
s2 = s[2..3].to_i
if s1 >= 1 && s1 <= 12 && s1 >= 1 && s2 <= 12
  puts 'AMBIGUOUS'
elsif s1 >= 1 && s1 <= 12
  puts 'MMYY'
elsif s2 >= 1 && s2 <= 12
  puts 'YYMM'
else
  puts 'NA'
end
