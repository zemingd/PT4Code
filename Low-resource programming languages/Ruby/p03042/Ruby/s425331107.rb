s1, s2 = gets.scan(/.{1,#{2}}/).map(&:to_i)
if (s1<=12 && 0<s1)
  puts (s2<=12 && 0<s2) ? "AMBIGUOUS" : "MMYY"
else
  puts (s2<=12 && 0<s2) ? "YYMM" : "NA"
end