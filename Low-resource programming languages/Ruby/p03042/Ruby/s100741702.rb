s = gets.chomp
a = "#{s[0]}#{s[1]}".to_i
b = "#{s[2]}#{s[3]}".to_i

yy = false
mm = false

if 0 < a and a < 13
  yy = true
end
if 0 < b and b < 13
  mm = true
end

if yy and mm
  puts "AMBIGUOUS"
elsif yy
  puts "MMYY"
elsif mm
  puts "YYMM"
else
  puts "NA"
end
