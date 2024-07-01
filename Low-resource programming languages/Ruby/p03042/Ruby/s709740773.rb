a,b,c,d = gets.chomp.split("").map(&:to_i)
pred = 10*a + b
last = 10*c + d
if last > 0 and last <= 12
  if pred > 0 and pred <= 12
    puts "AMBIGUOUS"
  else
    puts "YYMM"
  end
elsif pred > 0 and pred <= 12
  if last > 12
    puts "MMYY"
  else last > 0 and last <= 12
    puts "AMBIGUOUS"
  end
else
  puts "NA"
end