str = gets.strip
first, last = str.scan(/.{1,2}/)

if first.to_i < 13 && first.to_i > 0 && last.to_i < 13 && last.to_i > 0
  puts 'AMBIGUOUS'
elsif first.to_i < 13 && first.to_i > 0
  puts 'MMYY'
elsif last.to_i < 13 && last.to_i > 0
  puts 'YYMM'
else
  puts 'NA'
end