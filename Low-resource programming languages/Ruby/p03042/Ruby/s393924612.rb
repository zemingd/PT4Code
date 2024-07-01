S=gets.chomp
y1=(S[0]+S[1]).to_i
y2=(S[2]+S[3]).to_i
if y1 != 0 and y1 <=12
  if y2 != 0 and y2 <=12
    puts "AMBIGUOUS"
  else
    puts "MMYY"
  end
else
  if y2 != 0 and y2 <=12
    puts "YYMM"
  else
    puts "NA"
  end
end