# N, K = gets.chomp.split.map(&:to_i)
S = gets.chomp

#Ex. YYMM
# YY is 00-99, MM is 01-12
# So, we check "pre" and "sub"

# 01-12, month or year
# 00, 13-99, year

# pattern
# OK: year-(month or year)
# OK: (month or year)-year
# AMBIGUOUS: (month or year)-(month or year)
# NA: year-year

pre = S[0..1]
sub = S[2..-1]

def month_or_year?(s)
  i = s.to_i
  return (1 <= i && i <= 12)
end

p = month_or_year?(pre)
s = month_or_year?(sub)

if p && s 
  print "AMBIGUOUS\n"
elsif p && !s
  print "MMYY\n"
elsif !p && s
  print "YYMM\n"
else # !p && !s
  print "NA\n"
end