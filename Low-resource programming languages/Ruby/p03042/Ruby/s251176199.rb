s = gets.chomp.chars
yymm = true
mmyy = true

if (s[2] == '0' && s[3] == '0')
  yymm = false
end
if (s[0] == '0' && s[1] == '0')
  mmyy = false
end
if (s[0] + s[1]).to_i > 12
  mmyy = false 
end
if (s[2] + s[3]).to_i > 12
  yymm = false
end

if yymm && mmyy
  puts 'AMBIGUOUS'
elsif yymm && !mmyy
  puts 'YYMM'
elsif !yymm && mmyy
  puts 'MMYY'
else
  puts 'NA'
end