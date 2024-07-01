s = gets.chop

a,b,c,d = s.split("")

ab = a.to_s + b.to_s
cd = c.to_s + d.to_s

if ab.to_i > 12 && cd.to_i > 12 || ab.to_i > 12 && cd == "00" || cd.to_i > 12 && ab == "00" || cd == "00" && ab == "00"
  puts "NA"
elsif ab.to_i <= 12 && cd.to_i <= 12 || ab == "00" && cd.to_i <= 12 || cd == "00" && ab.to_i <= 12
  puts "AMBIGUOUS"
elsif ab.to_i > 12
  puts "YYMM"
else
  puts "MMYY"
end
