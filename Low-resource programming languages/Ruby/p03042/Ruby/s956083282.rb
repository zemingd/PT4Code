s = gets.chomp

def year?(cs)
  v = cs.join.to_i
  v > 12 || v == 0
end

f = s.chars[0, 2]
b = s.chars[2, 2]

def calc(f, b)
  if year?(f)
    if year?(b)
      'NA'
    else
      'YYMM'
    end
  else
    if year?(b)
      'MMYY'
    else
      'AMBIGUOUS'
    end
  end
end
puts calc(f, b)
