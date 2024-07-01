S = gets.to_s

int = S.scan(/.{1,#{2}}/)

if int[0].to_i.between?(1, 12) & int[1].to_i.between?(1, 12)
  puts 'AMBIGUOUS'
elsif !int[0].to_i.between?(1, 12) & !int[1].to_i.between?(1, 12)
  puts 'NA'
elsif !int[0].to_i.between?(1, 12) & int[1].to_i.between?(1, 12)
  puts 'YYMM'
else
  puts 'MMYY'
end