s = gets.chomp.chars
l = s[0..1].join.to_i
r = s[2..3].join.to_i
if l < 1 || l > 12#左側が月になり得ない場合
  if r < 1 || r > 13#右側も月になり得なければダメ
    puts "NA"  
  else
    puts "YYMM"
  end
else
  if r < 1 || r > 12#右側が月になり得ない場合
    puts "MMYY"
  else
    puts "AMBIGUOUS"
  end
end