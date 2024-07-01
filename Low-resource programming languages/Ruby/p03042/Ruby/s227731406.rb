def month?(n)
  (1..12).include?(n)
end

def yymm?(str)
  month?(str[2..3].to_i)
end

def mmyy?(str)
  month?(str[0..1].to_i)
end

def detect_format(str)
  if yymm?(str) && mmyy?(str)
    'AMBIGUOUS'
  elsif yymm?(str)
    'YYMM'
  elsif mmyy?(str)
    'MMYY'
  else
    'NA'
  end
end

puts detect_format(gets.chomp)