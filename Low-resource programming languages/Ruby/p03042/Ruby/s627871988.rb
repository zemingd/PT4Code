S = gets.chomp
f, l = S[0..1].to_i, S[2..3].to_i

if f*l == 0 or (f > 12 and l > 12)
  puts "NA"
elsif f <= 12 and l <= 12
  puts "AMBIGUOUS"
elsif f <= 12 and l > 12
  puts "MMYY"
else
  puts "YYMM"
end