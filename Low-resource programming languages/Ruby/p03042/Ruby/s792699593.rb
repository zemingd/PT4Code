str = gets.chomp

f = str[0,2]
b = str[2,2]

flg_f = f.match(/(11|12|0[1-9])/)
flg_b = b.match(/(11|12|0[1-9])/)

p flg_f
p flg_b

if flg_f && flg_b
  puts 'AMBIGUOUS'
elsif flg_f && !(flg_b)
  puts 'MMYY'
elsif !(flg_f) && flg_b
  puts 'YYMM'
else
  puts 'NA'
end