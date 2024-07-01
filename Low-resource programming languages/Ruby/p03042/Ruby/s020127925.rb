s = gets.strip
y = s.slice(0, 2).to_i
m = s.slice(2, 2).to_i

ym = y >= 1 && y <= 12
mm = m >= 1 && m <= 12

if ym && mm
  puts "AMBIGUOUS"
elsif ym
  puts "MMYY"
elsif mm
  puts "YYMM"
else
  puts "NA"
end
