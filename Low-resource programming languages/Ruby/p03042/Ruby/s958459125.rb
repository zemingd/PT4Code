s = gets.to_i
t = s / 100
u = s % 100
puts t

if t > 0 && t < 13
  if u > 0 && u < 13
    puts "AMBIGUOUS"
  else
    puts "MMYY"
  end
else
  if u > 0 && u < 13
    puts "YYMM"
  else
    puts "NA"
  end
end