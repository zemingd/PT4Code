S = gets.chomp.split('').map(&:to_i)

def yymm?(s)
  _a = s.slice(0, 2)
  b = s.slice(2, 2)

  b = b.join.to_i

  0 < b && b <= 12
end

def mmyy?(s)
  a = s.slice(0, 2)
  _b = s.slice(2, 2)

  a = a.join.to_i

  0 < a && a <= 12
end

if yymm?(S) && mmyy?(S)
  puts 'AMBIGUOUS'
elsif yymm?(S)
  puts 'YYMM'
elsif mmyy?(S)
  puts 'MMYY'
else
  puts 'NA'
end
