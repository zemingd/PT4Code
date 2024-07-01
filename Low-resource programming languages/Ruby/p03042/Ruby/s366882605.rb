s=gets.chomp
r = 0
r |= 1<=s[0,2].to_i&&s[0,2].to_i<=12 ? 1 : 0
r |= 1<=s[2,2].to_i&&s[2,2].to_i<=12 ? 2 : 0

case r
  when 0
  puts 'NA'
  when 1
  puts 'MMYY'
  when 2
  puts 'YYMM'
  when 3
  puts 'AMBIGUOUS'
end