s = gets.chomp
first = s[0..1].to_i
second = s[2..3].to_i
if first<=12&&1<=first
  if second<=12&&1<=second
    puts "AMBIGUOUS"
  else
    puts "MMYY"
  end
else
  if second<=12&&1<=second
    puts "YYMM"
  else
    puts "NA"
  end
end