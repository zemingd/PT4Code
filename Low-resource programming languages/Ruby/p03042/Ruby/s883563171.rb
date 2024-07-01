S = gets.chomp
f, l = S[0,2].to_i, S[2,2].to_i

if f*l == 0 or (f > 12 and l > 12)
  puts "NA"
elsif f <= 12 and l <= 12
  puts "AMBIGUOUS"
elsif f <= 12 and l > 12
  puts "MMYY"
elsif f > 12 and l <= 12
  puts "YYMM"
else
  puts "NA"
end