s = gets.to_i

a = s / 100
b = s % 100

if a >= 13 || a <= 0
  if b >= 13 || b <= 0
    puts "NA"
  else
    puts "YYMM"
  end
else
  if b >= 13 || a <= 0
    puts "MMYY"
  else
    puts "AMBIGUOUS"
  end
end

