n = gets.to_i
a = n/100
b = n%100
if a>0 && a<13
  if b>0 && b<13
    puts "AMBIGUOUS"
  else
    puts "MMYY"
  end
else
  if b>0 && b<13
    puts "YYMM"
  else
    puts "NA"
  end
end
