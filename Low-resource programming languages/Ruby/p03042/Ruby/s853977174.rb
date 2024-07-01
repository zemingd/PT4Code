S = gets
A = S[0..1]
B = S[2..3]

month = ['01','02','03','04','05','06','07','08','09','10','11','12']

if month.include?(A)
  if month.include?(B)
    p 'AMBIGUOUS'
  else
    p 'MMYY'
  end
else
  if month.include?(B)
    p 'YYMM'
  else
    p 'NA'
  end
end