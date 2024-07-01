str = gets

left = str.slice(0,2).to_i
right = str.slice(2,4).to_i

if left <= 12 && left > 0
  if right <= 12 && right > 0
    puts 'AMBIGUOUS'
  else
    puts 'MMYY'
  end
else
  if right <= 12 && right > 0
    puts 'YYMM'
  else
    puts 'NA'
  end
end