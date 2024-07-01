s = gets.strip

high = s[0..1].to_i
low = s[2..3].to_i

can_yymm=false
can_mmyy=false
if high > 0 && high <= 12
  can_mmyy = true
end

if low > 0 && low <= 12
  can_yymm = true
end

if can_yymm && can_mmyy
  puts "AMBIGUOUS"
elsif can_yymm
  puts "YYMM"
elsif can_mmyy
  puts "MMYY"
else
  puts "NA"
end
