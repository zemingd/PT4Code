S = gets.chomp

def month?(str)
  (1..12).cover?(str.to_i)
end

def year?(str)
  str.to_i > 0
end

def mmyy?(str)
  cond1 = month?(str[0..1])
  cond2 = year?(str[2..3])

  cond1 && cond2
end

def yymm?(str)
  cond1 = month?(str[2..3])
  cond2 = year?(str[0..1])

  cond1 && cond2
end

if mmyy?(S) && yymm?(S)
  puts 'AMBIGUOUS'
elsif mmyy?(S)
  puts 'MMYY'
elsif yymm?(S)
  puts 'YYMM'
else
  puts 'NA'
end
