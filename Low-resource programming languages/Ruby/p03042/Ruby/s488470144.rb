s = gets
h = s[0..1].to_i
t = s[2..3].to_i
m = 1..12
case
  when m.include?(t) && m.include?(h)
    puts 'AMBIGUOUS'
  when h >= 0 && m.include?(t)
    puts 'YYMM'
  when t >= 0 && m.include?(h)
    puts 'MMYY'
  else
    puts 'NA'
end