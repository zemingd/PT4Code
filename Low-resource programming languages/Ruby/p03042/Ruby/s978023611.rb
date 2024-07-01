S = gets.chomp

isyymm = false
yymm = S.match(/(\d\d)(\d\d)/)
if yymm && yymm[2].to_i > 0 && yymm[2].to_i <= 12
  isyymm = true
end

ismmyy = false
mmyy = S.match(/(\d\d)(\d\d)/)
if mmyy && yymm[1].to_i > 0 && yymm[1].to_i <= 12
  ismmyy = true
end

if ismmyy && isyymm
  puts 'AMBIGUOUS'
elsif isyymm
  puts 'YYMM'
elsif ismmyy
  puts 'MMYY'
else
  puts 'NA'
end
