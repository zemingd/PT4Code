s=gets.chomp.split("").map{|s| s.to_i}
if s[0]*10+s[1]<=12 && s[2]*10+s[3]<=12 && s[0]*10+s[1]!=0 && s[2]*10+s[3]!=0
  puts "AMBIGUOUS"
elsif (s[0]*10+s[1]<=12 && s[0]*10+s[1]!=0) && (s[2]*10+s[3]>12 || s[2]*10+s[3]==0)
  puts "MMYY"
elsif (s[0]*10+s[1]>12 && s[0]*10+s[1]==0) && (s[2]*10+s[3]<=12 || s[2]*10+s[3]!=0)
  puts "YYMM"
else
  puts "NA"
end