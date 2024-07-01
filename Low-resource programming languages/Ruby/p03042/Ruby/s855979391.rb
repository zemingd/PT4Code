s=gets.to_s
if (0 <s[0,2].to_i and s[0,2].to_i<13) and(0 <s[2,2].to_i and s[2,2].to_i<13)
  puts 'AMBIGUOUS'
elsif 0 <s[2,2].to_i and s[2,2].to_i<13
  puts 'YYMM'
elsif 0 <s[0,2].to_i and s[0,2].to_i<13
  puts 'MMYY'
else
  puts 'NA'
end