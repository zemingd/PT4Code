S = gets.strip
pre = S[0,2]
post = S[2,2]

def is_month(s)
  (s[0] == '0' && s[1] != '0') || (s[0] == '1' && (s[1].to_i <= 2))
end

if is_month(pre) && is_month(post)
  puts 'AMBIGUOUS'
elsif is_month(pre)
  puts 'MMYY'
elsif is_month(post)
  puts 'YYMM'
else
  puts 'NA'
end
