S = gets.chomp
s1 = S[0..1].to_i
s2 = S[2..3].to_i

yymm = false
mmyy = false
if 1 <= s1 and s1 <= 12 then
  mmyy = true
end
if 1 <= s2 and s2 <= 12 then
  yymm = true
end
  
if yymm then
  if mmyy then
    puts "AMBIGUOUS"
  else
    puts "YYMM"
  end
else
  if mmyy then
    puts "MMYY"
  else
    puts "NA"
  end
end