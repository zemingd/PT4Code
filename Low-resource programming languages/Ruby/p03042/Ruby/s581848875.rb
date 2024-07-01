S = gets.chomp
first = S[0, 2].to_i
last = S[2, 2].to_i
 
if (1..12).include?(first)
  if (1..12).include?(last)
    puts 'AMBIGUOUS'
  else
    puts 'MMYY'
  end
else
  if (1..12).include?(last)
    puts 'YYMM'
  else
    puts 'NA'
  end
end
