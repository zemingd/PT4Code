s = gets.chomp
l = s[0..1].to_i
r = s[2..3].to_i
if 1 <= l && l <= 12
  if 1 <= r && r <= 12
    puts "AMBIGUOUS"
  else
    puts "MMYY"
  end
else
  if 1 <= r && r <= 12
    puts "YYMM"
  else
    puts "NA"
  end
end