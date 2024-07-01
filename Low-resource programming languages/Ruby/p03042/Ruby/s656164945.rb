str = gets.strip
first = str[0..1]
last = str[2..3]

if first.to_i < 13 && first.to_i > 0
  if last.to_i < 13 && last.to_i > 0
    puts 'AMBIGUOUS'
    return
  end
  puts 'MMYY'
elsif last.to_i < 13 && last.to_i > 0
  puts 'YYMM'
else
  puts 'NA'
end