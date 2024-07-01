s = gets.chomp

aa = s[0..1]
bb = s[2..3]

if aa.to_i <= 12 && bb.to_i <= 12
  puts 'AMBIGUOUS'
elsif aa.to_i >= 1 && aa.to_i <= 12
  puts 'MMYY'
elsif bb.to_i >= 1 && bb.to_i <= 12
  puts 'YYMM'
else
  puts 'NA'
end