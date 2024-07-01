array = gets.split("").map(&:to_i)
a=10*array[0]+array[1]
b=10*array[2]+array[3]
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