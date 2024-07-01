s = gets.to_i

a = s/100
b = s%100
 
if a.between?(1, 12) & b.between?(1, 12)
  puts 'AMBIGUOUS'
elsif !a.between?(1, 12) & !b.between?(1, 12)
  puts 'NA'
elsif !a.between?(1, 12) & b.between?(1, 12)
  puts 'YYMM'
else
  puts 'MMYY'
end