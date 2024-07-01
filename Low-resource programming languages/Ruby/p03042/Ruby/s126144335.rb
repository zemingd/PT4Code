S = gets.strip
f = S[0..1].to_i
b = S[2..3].to_i
r = 'NA'
if (0 < f && f <= 12) && (0 < b && b <= 12)
  r = 'AMBIGUOUS'
elsif 0 < b && b <= 12
  r = 'YYMM'
elsif 0 < f && f <= 12
  r = 'MMYY'
end
puts r