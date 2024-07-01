s=gets.chomp
first=s[0..1].to_i
second=s[2..3].to_i
if first==0 || second==0
  puts "NA"
else
  if 1<=first && first<=12
    if 1<=second && second<=12
      puts "AMBIGUOUS"
    else
      puts "MMYY"
    end
  else
    if 1<=second && second<=12
      puts "YYMM"
    else
      puts "NA"
    end
  end
end
