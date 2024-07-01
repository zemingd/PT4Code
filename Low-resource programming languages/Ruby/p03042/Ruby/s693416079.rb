s = gets

x = s.slice(0,2).to_i
y = s.slice(2, 2).to_i

if (12<x && y==0) || (x==0 && 12<y)
  puts "NA"
else if  x<=12 && y<=12
  puts "AMBIGUOUS"
else if 0<x<=12 && 12<y<=99
  p "MMYY"
else if x<=99 && 0<y<=12
  p "YYMM"
end