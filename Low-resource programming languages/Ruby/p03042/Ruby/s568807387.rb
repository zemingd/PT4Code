S = gets

a = S[0..1].to_i
b = S[2..3].to_i
mmyy = 0 < a && a <= 12
yymm = 0 < b && b <= 12

puts(
  if yymm && mmyy
    'AMBIGUOUS'
  elsif yymm
    'YYMM'
  elsif mmyy
    'MMYY'
  else
    'NA'
  end
)
