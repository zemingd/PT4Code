a = gets.to_i
under = a%100
top = (a-under)/100
ans = 'NA'
if (top <=12 && top >= 1) && (under <= 12 && under >= 1)
  ans = 'AMBIGUOUS'
elsif under <= 12 && under >= 1
  ans = 'YYMM'
elsif top <=12 && top >= 1
  ans = 'MMYY'
end
p ans