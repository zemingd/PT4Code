str = gets.chomp.split("")
str_left = str[0..1].join
str_right = str[2..3].join

yymm_flag = false
mmyy_flag = false
(1..12).each do |i|
  if i < 10
    i = i.to_s
    s = '0'+ i
    mmyy_flag = true if s == str_left
    yymm_flag = true if s == str_right
  else
    s = i.to_s
    mmyy_flag = true if s == str_left
    yymm_flag = true if s == str_right
  end
end

if yymm_flag && mmyy_flag
  puts 'AMBIGUOUS'
else
  puts 'YYMM' if yymm_flag
  puts 'MMYY' if mmyy_flag
  puts 'NA' if !yymm_flag && !mmyy_flag
end