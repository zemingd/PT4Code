S = gets.to_i
u = S / 100
d = S % 100

yymm = false
mmyy = false

if 12 > u && u > 0
  if d > 0
    mmyy = true
  end
end

if 12 > d && d > 0
  if s > 0
    yymm = true
  end
end

ans = (yymm && mmyy) ? 'AMBIGUOUS' : yymm ? 'YYMM' : mmyy ? 'MMYY' : 'NA'

puts ans