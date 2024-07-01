s = gets.chomp
s1, s2 = [s[0..1], s[2..3]].map(&:to_i)
if 1 <= s1 && s1 <= 12 then
  if 1 <= s2 && s2 <= 12 then
    puts "AMBIGUOUS"
  else
    puts "MMYY"
  end
else
  if 1 <= s2 && s2 <= 12 then
    puts "YYMM"
  else
    puts "NA"
  end
end