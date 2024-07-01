s = gets.strip

f = s[0, 2].to_i
b = s[2, 2].to_i

if f == 0 || b == 0
  puts 'NA'
  exit
end

if f >= 13
  if b >= 1 && b <=12 
    puts 'YYMM'
  else
    puts 'NA'
  end
elsif f >= 1 && f <= 12
  if b >= 13
    puts 'MMYY'
  else
    puts 'AMBIGUOUS'
  end
end
