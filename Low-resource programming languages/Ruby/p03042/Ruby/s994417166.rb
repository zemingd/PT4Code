def month?(n)
  return n >= 1 && n <= 12
end

s = gets.strip
h = s[0, 2].to_i
l = s[2, 2].to_i

hm = month?(h)
lm = month?(l)

if !hm && lm
  puts 'YYMM'
elsif hm && !lm
  puts 'MMYY'
elsif hm && lm
  puts 'AMBIGUOUS'
else
  puts 'NA'
end
