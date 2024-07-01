S = gets.to_s

int = S.scan(/.{1,#{2}}/)

return puts 'AMBIGUOUS' if int[0].to_i.between?(1, 12) & int[1].to_i.between?(1, 12)
return puts 'NA' if !int[0].to_i.between?(1, 12) & !int[1].to_i.between?(1, 12)

if !int[0].to_i.between?(1, 12) & int[1].to_i.between?(1, 12)
  puts 'YYMM'
else
  puts 'MMYY'
end