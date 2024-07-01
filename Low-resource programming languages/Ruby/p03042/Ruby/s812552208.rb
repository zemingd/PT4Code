s = gets.chomp
v1 = s[0..1].to_i
v2 = s[2..3].to_i

result = 'NA'
if (1 <= v1 && v1 <= 12) && (0 <= v2 && v2 <= 99)
  result = 'MMYY'
end

if (1 <= v2 && v2 <= 12) && (0 <= v1 && v1 <= 99)
  if result == 'MMYY'
    result = 'AMBIGUOUS'
  else
    result = 'YYMM'
  end
end

puts(result)
